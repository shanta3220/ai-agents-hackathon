import pandas as pd
import joblib

# Load audio_risk_model
audio_model = joblib.load('src/model/audio_risk_model.pkl')

 #Create fake audio feature data
X_audio = pd.DataFrame([
    [180, 	40, 	0.30, 	0.05],
    [45.0, 85.0, 0.040, 0.030],
    [25.5, 95.2, 0.028, 0.020],
], columns=['duration', 'tempo', 'zero_crossing_rate', 'rms_energy'])  # <- Column names added

# Predict
y_audio_pred = audio_model.predict(X_audio)
print("Predictions from audio_risk_model:", y_audio_pred)

risk_model = joblib.load('src/model/risk_predictor.pkl')

# Create fake health feature data (3 samples)
X_health = pd.DataFrame([
    {
        'Age': 70, 'Gender': 1, 'Ethnicity': 0, 'EducationLevel': 2,
        'BMI': 25, 'Smoking': 0, 'AlcoholConsumption': 1, 'PhysicalActivity': 1,
        'DietQuality': 2, 'SleepQuality': 1, 'FamilyHistoryAlzheimers': 1,
        'CardiovascularDisease': 0, 'Diabetes': 0, 'Depression': 0,
        'HeadInjury': 0, 'Hypertension': 1, 'SystolicBP': 140,
        'DiastolicBP': 90, 'CholesterolTotal': 200, 'CholesterolLDL': 130,
        'CholesterolHDL': 50, 'CholesterolTriglycerides': 150,
        'MMSE': 28, 'FunctionalAssessment': 0, 'MemoryComplaints': 1,
        'BehavioralProblems': 0, 'ADL': 0, 'Confusion': 0,
        'Disorientation': 0, 'PersonalityChanges': 0,
        'DifficultyCompletingTasks': 0, 'Forgetfulness': 1
    },
     {
        'Age': 82, 'Gender': 1, 'Ethnicity': 1, 'EducationLevel': 0,
        'BMI': 30, 'Smoking': 1, 'AlcoholConsumption': 1, 'PhysicalActivity': 0,
        'DietQuality': 0, 'SleepQuality': 0, 'FamilyHistoryAlzheimers': 1,
        'CardiovascularDisease': 1, 'Diabetes': 1, 'Depression': 1,
        'HeadInjury': 1, 'Hypertension': 1, 'SystolicBP': 160,
        'DiastolicBP': 95, 'CholesterolTotal': 250, 'CholesterolLDL': 170,
        'CholesterolHDL': 35, 'CholesterolTriglycerides': 300,
        'MMSE': 18, 'FunctionalAssessment': 1, 'MemoryComplaints': 1,
        'BehavioralProblems': 1, 'ADL': 1, 'Confusion': 1,
        'Disorientation': 1, 'PersonalityChanges': 1,
        'DifficultyCompletingTasks': 1, 'Forgetfulness': 1
    }
])

# Predict
y_health_pred = risk_model.predict(X_health)
print("Predictions from risk_predictor:", y_health_pred)