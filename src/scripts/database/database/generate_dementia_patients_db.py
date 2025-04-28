import pandas as pd
import sqlite3
import os

# Load the real Alzheimer disease dataset
csv_path = 'src/database/data/alzheimers_disease_data.csv'
df = pd.read_csv(csv_path)

# Path to save the .db file
db_path = 'src/database/dementia_patients.db'

# Delete existing database if exists (optional but safer for fresh generation)
if os.path.exists(db_path):
    os.remove(db_path)

# Connect to the database (this will create it)
conn = sqlite3.connect(db_path)
cur = conn.cursor()

# Create the dementia_patients table
cur.execute("""
CREATE TABLE IF NOT EXISTS dementia_patients (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    PatientID INTEGER,
    Age REAL,
    Gender INTEGER,
    Ethnicity INTEGER,
    EducationLevel INTEGER,
    BMI REAL,
    Smoking INTEGER,
    AlcoholConsumption REAL,
    PhysicalActivity REAL,
    DietQuality REAL,
    SleepQuality REAL,
    FamilyHistoryAlzheimers INTEGER,
    CardiovascularDisease INTEGER,
    Diabetes INTEGER,
    Depression INTEGER,
    HeadInjury INTEGER,
    Hypertension INTEGER,
    SystolicBP REAL,
    DiastolicBP REAL,
    CholesterolTotal REAL,
    CholesterolLDL REAL,
    CholesterolHDL REAL,
    CholesterolTriglycerides REAL,
    MMSE REAL,
    FunctionalAssessment REAL,
    MemoryComplaints INTEGER,
    BehavioralProblems INTEGER,
    ADL REAL,
    Confusion INTEGER,
    Disorientation INTEGER,
    PersonalityChanges INTEGER,
    DifficultyCompletingTasks INTEGER,
    Forgetfulness INTEGER,
    Diagnosis INTEGER,
    DoctorInCharge TEXT
);
""")

# Insert each row
for _, row in df.iterrows():
    doctor = row['DoctorInCharge'].replace("'", "''") if pd.notnull(row['DoctorInCharge']) else None

    cur.execute("""
    INSERT INTO dementia_patients (
        PatientID, Age, Gender, Ethnicity, EducationLevel, BMI, Smoking, AlcoholConsumption, PhysicalActivity,
        DietQuality, SleepQuality, FamilyHistoryAlzheimers, CardiovascularDisease, Diabetes, Depression,
        HeadInjury, Hypertension, SystolicBP, DiastolicBP, CholesterolTotal, CholesterolLDL, CholesterolHDL,
        CholesterolTriglycerides, MMSE, FunctionalAssessment, MemoryComplaints, BehavioralProblems, ADL,
        Confusion, Disorientation, PersonalityChanges, DifficultyCompletingTasks, Forgetfulness, Diagnosis,
        DoctorInCharge
    ) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)
    """, (
        row['PatientID'], row['Age'], row['Gender'], row['Ethnicity'], row['EducationLevel'],
        row['BMI'], row['Smoking'], row['AlcoholConsumption'], row['PhysicalActivity'],
        row['DietQuality'], row['SleepQuality'], row['FamilyHistoryAlzheimers'],
        row['CardiovascularDisease'], row['Diabetes'], row['Depression'], row['HeadInjury'],
        row['Hypertension'], row['SystolicBP'], row['DiastolicBP'], row['CholesterolTotal'],
        row['CholesterolLDL'], row['CholesterolHDL'], row['CholesterolTriglycerides'],
        row['MMSE'], row['FunctionalAssessment'], row['MemoryComplaints'], row['BehavioralProblems'],
        row['ADL'], row['Confusion'], row['Disorientation'], row['PersonalityChanges'],
        row['DifficultyCompletingTasks'], row['Forgetfulness'], row['Diagnosis'],
        doctor
    ))

# Save (commit) and close
conn.commit()
conn.close()

print(f"Database created successfully at: {db_path}")
