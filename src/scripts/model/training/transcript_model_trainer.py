import pandas as pd
from sklearn.ensemble import RandomForestClassifier
from sklearn.model_selection import train_test_split
from sklearn.metrics import accuracy_score, confusion_matrix
import joblib
import os

import pandas as pd

# 1. Load the extracted speech features
csv_path = 'src/database/data/transcripts/speech_features.csv'
df = pd.read_csv(csv_path)
print(df['label'].value_counts())

print(f"Loaded speech features from {csv_path}")
print(df.head())

# 2. Prepare inputs (X) and labels (y)
X = df[['word_count', 'sentence_count', 'avg_sentence_length']]
y = df['label']

# 3. Train/Test Split
X_train, X_test, y_train, y_test = train_test_split(
    X, y, test_size=0.3, random_state=42
)

print(f"Training samples: {X_train.shape[0]} | Testing samples: {X_test.shape[0]}")

# 4. Train the RandomForest Classifier
model = RandomForestClassifier(random_state=42)
model.fit(X_train, y_train)

print("Model training completed!")

# 5. Evaluate the Model
y_pred = model.predict(X_test)

accuracy = accuracy_score(y_test, y_pred)
conf_matrix = confusion_matrix(y_test, y_pred)

print(f"Accuracy: {accuracy:.4f}")
print("Confusion Matrix:")
print(conf_matrix)

# 6. Save the Trained Model
model_output_path = 'src/model/transcript_model.pkl'
os.makedirs(os.path.dirname(model_output_path), exist_ok=True)
joblib.dump(model, model_output_path)

print(f"Trained model saved at: {model_output_path}")
