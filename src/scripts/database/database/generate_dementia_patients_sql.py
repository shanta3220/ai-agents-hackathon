import pandas as pd

# Load the real Alzheimer disease dataset
csv_path = 'src/database/data/alzheimers_disease_data.csv'
df = pd.read_csv(csv_path)

# SQL table creation script
create_table_sql = """
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
"""

# Generate INSERT statements
insert_statements = []
for _, row in df.iterrows():
    # Escape single quotes if any (important for text fields like DoctorInCharge)
    doctor = row['DoctorInCharge'].replace("'", "''") if pd.notnull(row['DoctorInCharge']) else 'NULL'

    insert_statements.append(f"""
    INSERT INTO dementia_patients (
        PatientID, Age, Gender, Ethnicity, EducationLevel, BMI, Smoking, AlcoholConsumption, PhysicalActivity,
        DietQuality, SleepQuality, FamilyHistoryAlzheimers, CardiovascularDisease, Diabetes, Depression,
        HeadInjury, Hypertension, SystolicBP, DiastolicBP, CholesterolTotal, CholesterolLDL, CholesterolHDL,
        CholesterolTriglycerides, MMSE, FunctionalAssessment, MemoryComplaints, BehavioralProblems, ADL,
        Confusion, Disorientation, PersonalityChanges, DifficultyCompletingTasks, Forgetfulness, Diagnosis,
        DoctorInCharge
    ) VALUES (
        {row['PatientID']}, {row['Age']}, {row['Gender']}, {row['Ethnicity']}, {row['EducationLevel']},
        {row['BMI']}, {row['Smoking']}, {row['AlcoholConsumption']}, {row['PhysicalActivity']},
        {row['DietQuality']}, {row['SleepQuality']}, {row['FamilyHistoryAlzheimers']},
        {row['CardiovascularDisease']}, {row['Diabetes']}, {row['Depression']}, {row['HeadInjury']},
        {row['Hypertension']}, {row['SystolicBP']}, {row['DiastolicBP']}, {row['CholesterolTotal']},
        {row['CholesterolLDL']}, {row['CholesterolHDL']}, {row['CholesterolTriglycerides']},
        {row['MMSE']}, {row['FunctionalAssessment']}, {row['MemoryComplaints']}, {row['BehavioralProblems']},
        {row['ADL']}, {row['Confusion']}, {row['Disorientation']}, {row['PersonalityChanges']},
        {row['DifficultyCompletingTasks']}, {row['Forgetfulness']}, {row['Diagnosis']},
        '{doctor}'
    );
    """.strip())

# Combine all SQL parts
full_sql_script = create_table_sql + "\n\n" + "\n".join(insert_statements)

# Save the final script
with open('src\database\populate_real_dementia_data.sql', 'w', encoding='utf-8') as f:
    f.write(full_sql_script)

print("SQL script 'populate_real_dementia_data.sql' created successfully!")
