import pandas as pd
import joblib
from typing import Dict
import numpy as np
import json
from dementia_data import QueryResults
import whisper
import wave
import re
import os
import librosa
import chainlit as cl  

# Training models
audio_model = joblib.load('src/model/audio_risk_model.pkl')
clinical_model = joblib.load('src/model/risk_predictor.pkl')
transcript_model = joblib.load('src/model/transcript_model.pkl')


CLINICAL_FEATURES = [
    "Age", "Gender", "Ethnicity", "EducationLevel", "BMI",
    "Smoking", "AlcoholConsumption", "PhysicalActivity", "DietQuality", "SleepQuality",
    "FamilyHistoryAlzheimers", "CardiovascularDisease", "Diabetes", "Depression", "HeadInjury",
    "Hypertension", "SystolicBP", "DiastolicBP",
    "CholesterolTotal", "CholesterolLDL", "CholesterolHDL", "CholesterolTriglycerides",
    "MMSE", "FunctionalAssessment", "MemoryComplaints", "BehavioralProblems",
    "ADL", "Confusion", "Disorientation", "PersonalityChanges", "DifficultyCompletingTasks",
    "Forgetfulness"
]

CRITICAL_FIELDS = [
    "Age", "Gender", "BMI", "Hypertension", "SystolicBP", "DiastolicBP", "Forgetfulness"
]

async def predict_health_risk(args: dict) -> QueryResults:
    missing_critical = [field for field in CRITICAL_FIELDS if field not in args]

    if missing_critical:
        missing_list = ", ".join(missing_critical)
        warning_message = f"To proceed with dementia risk prediction, please provide: {missing_list}."
        return QueryResults(
            display_format=warning_message,
            json_format=json.dumps({"error": "Missing fields", "missing_fields": missing_critical})
        )

    # Fill missing optional fields
    filled_data = {feature: args.get(feature, 0) for feature in CLINICAL_FEATURES}
    feature_array = np.array([[filled_data[feature] for feature in CLINICAL_FEATURES]])
    prediction = clinical_model.predict(feature_array)[0]

    return QueryResults(
        display_format=f"Predicted dementia risk (Clinical Model): **{int(prediction)}**",
        json_format=json.dumps({"prediction": int(prediction)})
    )

async def predict_audio_risk(args: dict) -> QueryResults:
    df = pd.DataFrame([args])
    prediction = audio_model.predict(df)[0]

    return QueryResults(
        display_format=f"Predicted dementia risk (Audio Model): **{int(prediction)}**",
        json_format=json.dumps({"prediction": int(prediction)})
    )

async def predict_transcript_risk(args: dict) -> QueryResults:
    """Predict dementia risk based on speech transcript features."""
    print(args);
    word_count = args.get('word_count')
    sentence_count = args.get('sentence_count')
    avg_sentence_length = args.get('avg_sentence_length')
    pause_count = args.get('pause_count')
    speech_rate = args.get('speech_rate')
    pause_per_sentence = args.get('pause_per_sentence')

    # Try to auto-calculate if missing
    if pause_per_sentence is None and pause_count is not None and sentence_count:
        pause_per_sentence = pause_count / sentence_count
        args['pause_per_sentence'] = pause_per_sentence

    if speech_rate is None and word_count:
        # Assume speech duration of 1 minute if duration unknown
        speech_rate = word_count / 1  
        args['speech_rate'] = speech_rate

    missing_fields = []
    required_features = [
        'word_count',
        'sentence_count',
        'avg_sentence_length',
        'pause_count',
        'speech_rate',
        'pause_per_sentence'
    ]
    for feature in required_features:
        if args.get(feature) is None:
            missing_fields.append(feature)

    if missing_fields:
        return QueryResults(
            display_format=f"Missing required fields: {', '.join(missing_fields)}. Please provide them to proceed.",
            json_format=json.dumps({"error": "missing_features", "fields": missing_fields})
        )
    
    df = pd.DataFrame([{
        "word_count": word_count,
        "sentence_count": sentence_count,
        "avg_sentence_length": avg_sentence_length,
        "pause_count": pause_count,
        "speech_rate": speech_rate,
        "pause_per_sentence": pause_per_sentence
    }])

    prediction = transcript_model.predict(df)[0]

    return QueryResults(
        display_format=f"Predicted dementia risk (Transcript Model): **{int(prediction)}**",
        json_format=json.dumps({"prediction": int(prediction)})
    )

async def predict_transcript_risk_from_audio(args: dict) -> QueryResults:
    input_path = args.get("audio_clip_path") or args.get("file_path")
    if not input_path:
        return QueryResults(
            display_format="❌ No file path provided.",
            json_format='{"error": "missing_file_path"}'
        )

    file_id = os.path.splitext(os.path.basename(input_path))[0]
    actual_path = None
    for root, _, files in os.walk(".files"):
        for f in files:
            if file_id in f:
                actual_path = os.path.join(root, f)
                break
        if actual_path:
            break

    if not actual_path or not os.path.exists(actual_path):
        return QueryResults(
            display_format=f"❌ File `{file_id}` not found.",
            json_format='{"error": "file_not_found"}'
        )
    
    actual_path = os.path.abspath(actual_path).replace("\\", "/")
    os.environ["PATH"] = os.path.abspath("bin") + os.pathsep + os.environ.get("PATH", "")

    audio_features = extract_audio_features(actual_path)
    audio_pred = audio_model.predict(pd.DataFrame([audio_features]))[0]

    if audio_pred == 1:
        return QueryResults(
            display_format="🎧 Audio Model: **1**\n\n⚠️ Final Dementia Risk Decision: **AT RISK (audio-based)**",
            json_format=json.dumps({
                "audio_model": 1,
                "transcript_model": None,
                "final_risk": 1
            })
        )

    model = whisper.load_model("base")
    result = model.transcribe(actual_path)
    duration = _get_audio_duration(actual_path)
    transcript_features = _extract_transcript_features(result["text"], duration)
    transcript_pred = transcript_model.predict(pd.DataFrame([transcript_features]))[0]

    final_risk = 1 if transcript_pred == 1 else 0
    final_label = "AT RISK" if final_risk else "LOW RISK"
    final_note = " (transcript-based)" if final_risk else ""

    display = (
        f"🎧 Audio Model: **0**\n"
        f"📝 Transcript Model: **{transcript_pred}**\n\n"
        f"⚠️ Final Dementia Risk Decision: **{final_label}{final_note}**"
    )

    return QueryResults(
        display_format=display,
        json_format=json.dumps({
            "audio_model": 0,
            "transcript_model": int(transcript_pred),
            "final_risk": final_risk
        })
    )



def extract_audio_features(file_path: str):
    y, sr = librosa.load(file_path, sr=None)

    duration = librosa.get_duration(y=y, sr=sr)
    
    tempo, _ = librosa.beat.beat_track(y=y, sr=sr)
    
    zcr = np.mean(librosa.feature.zero_crossing_rate(y=y)[0])
    
    rms = np.mean(librosa.feature.rms(y=y)[0])

    return {
        "duration": duration,
        "tempo": tempo,
        "zero_crossing_rate": zcr,
        "rms_energy": rms
    }

def _get_audio_duration(file_path: str) -> float:
    try:
        with wave.open(file_path, 'rb') as f:
            frames = f.getnframes()
            rate = f.getframerate()
            return frames / float(rate)
    except Exception:
        return 60.0  # default 60 seconds if unreadable

def _extract_transcript_features(transcript: str, duration: float) -> dict:
    word_count = len(re.findall(r'\b\w+\b', transcript))
    sentence_count = len([s for s in re.split(r'[.!?]+', transcript) if s.strip()])
    avg_sentence_length = word_count / sentence_count if sentence_count else word_count
    pause_count = transcript.count(',') + transcript.count('.') + transcript.count('?') + transcript.count('!')
    speech_rate = word_count / duration if duration else 0
    pause_per_sentence = pause_count / (sentence_count + 1e-5)
    return {
        "word_count": word_count,
        "sentence_count": sentence_count,
        "avg_sentence_length": avg_sentence_length,
        "pause_count": pause_count,
        "speech_rate": speech_rate,
        "pause_per_sentence": pause_per_sentence
    }

