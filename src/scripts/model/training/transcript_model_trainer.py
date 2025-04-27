import pandas as pd
from sklearn.ensemble import RandomForestClassifier
from sklearn.model_selection import train_test_split
from sklearn.metrics import accuracy_score, confusion_matrix, classification_report
import joblib
import os

# Load the extracted speech features
csv_path = 'src/database/data/transcripts/speech_features.csv'
df = pd.read_csv(csv_path)

print(df['label'].value_counts())
print(f"Loaded speech features from {csv_path}")
print(df.head())

# Define feature columns including pause_per_sentence
features = [
    'word_count',
    'sentence_count',
    'avg_sentence_length',
    'pause_count',
    'speech_rate',
    'pause_per_sentence'
]

X = df[features]
y = df['label']

# Train/Test Split (stratified)
X_train, X_test, y_train, y_test = train_test_split(
    X, y, test_size=0.3, random_state=42, stratify=y
)

print(f"Training samples: {X_train.shape[0]} | Testing samples: {X_test.shape[0]}")

# Train RandomForest Classifier
model = RandomForestClassifier(
    n_estimators=200,
    max_depth=10,
    random_state=42
)
model.fit(X_train, y_train)

print("Model training completed!")

# Evaluate
y_pred = model.predict(X_test)

accuracy = accuracy_score(y_test, y_pred)
conf_matrix = confusion_matrix(y_test, y_pred)

print(f"Accuracy: {accuracy:.4f}")
print(" Confusion Matrix:")
print(conf_matrix)
print("Classification Report:")
print(classification_report(y_test, y_pred))

# Save the trained model
model_output_path = 'trained_models/transcript_dementia_model.pkl'
os.makedirs(os.path.dirname(model_output_path), exist_ok=True)
joblib.dump(model, model_output_path)

print(f"Trained model saved at: {model_output_path}")
