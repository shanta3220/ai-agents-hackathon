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
    df = pd.DataFrame([args])
    prediction = transcript_model.predict(df)[0]

    return QueryResults(
        display_format=f"Predicted dementia risk (Transcript Model): **{int(prediction)}**",
        json_format=json.dumps({"prediction": int(prediction)})
    )