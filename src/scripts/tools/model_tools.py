import pandas as pd
import joblib
from typing import Dict
import numpy as np
import json
from dementia_data import QueryResults


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
