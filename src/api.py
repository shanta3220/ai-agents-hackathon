from fastapi import FastAPI
from pydantic import BaseModel
import joblib
import numpy as np
import os

app = FastAPI()

# Load models
model_dir = os.path.join(os.path.dirname(__file__), "..", "model")
clinical_model = joblib.load(os.path.join(model_dir, "risk_predictor.pkl"))
audio_model = joblib.load(os.path.join(model_dir, "audio_risk_model.pkl"))

# Schemas
class ClinicalFeatures(BaseModel):
    age: float
    mmse: float
    depression: int

class AudioFeatures(BaseModel):
    duration: float
    tempo: float
    zero_crossing_rate: float
    rms_energy: float

# Endpoints
@app.post("/predict-risk")
def predict_clinical(data: ClinicalFeatures):
    features = np.array([[data.age, data.mmse, data.depression]])
    pred = clinical_model.predict(features)[0]
    return {"clinical_risk_prediction": int(pred)}

@app.post("/predict-audio-risk")
def predict_audio(data: AudioFeatures):
    features = np.array([[data.duration, data.tempo, data.zero_crossing_rate, data.rms_energy]])
    pred = audio_model.predict(features)[0]
    return {"audio_risk_prediction": int(pred)}
