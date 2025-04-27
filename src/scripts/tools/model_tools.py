import pandas as pd
import joblib

# Training models
audio_model = joblib.load('src/model/audio_risk_model.pkl')
health_model = joblib.load('src/model/risk_predictor.pkl')
transcript_model = joblib.load('src/model/transcript_model.pkl')

def predict_health_risk(args: dict) -> str:
    df = pd.DataFrame([args])
    prediction = health_model.predict(df)[0]
    return f"Predicted Dementia Risk (Health Model): {prediction}"

def predict_audio_risk(args: dict) -> str:
    df = pd.DataFrame([args])
    prediction = audio_model.predict(df)[0]
    return f"Predicted Dementia Risk (Audio Model): {prediction}"

def predict_transcript_risk(args: dict) -> str:
    df = pd.DataFrame([args])
    prediction = transcript_model.predict(df)[0]
    return f"Predicted Dementia Risk (Transcript Model): {prediction}"