import os
#Changing environment path to include the bin directory
os.environ["PATH"] = os.path.abspath("bin") + os.pathsep + os.environ["PATH"]

import whisper
#import random
import pandas as pd
import json


# Load Whisper model
model = whisper.load_model("base")

# Define paths
base_path = "src/database/data/DementiaNet/AudioFiles"
dementia_path = os.path.join(base_path, "dementia")
nodementia_path = os.path.join(base_path, "nodementia")

# Helper to collect all wav file paths
def get_all_wav_files(folder_path):
    wav_files = []
    for root, dirs, files in os.walk(folder_path):
        for file in files:
            if file.lower().endswith(".wav"):
                wav_files.append(os.path.join(root, file))
    return wav_files

# Get all files
dementia_files = get_all_wav_files(dementia_path)
nodementia_files = get_all_wav_files(nodementia_path)

# Pick random samples (adjust number as needed)
# num_samples_each = 3  # 3 dementia + 3 nodementia
# sample_files = random.sample(dementia_files, min(num_samples_each, len(dementia_files))) + \
#                random.sample(nodementia_files, min(num_samples_each, len(nodementia_files)))

all_files = dementia_files + nodementia_files

# Transcribe
records = []

for filepath in all_files:
    print(f"Transcribing: {filepath}")

    # FIX: Only normalize slashes, do NOT add quotes
    fixed_path = filepath.replace("\\", "/")

    result = model.transcribe(
    fixed_path,
    temperature=0.5,      # Randomness of decoding
    beam_size=5,          # Beam search width
    best_of=5,            # Sample multiple candidates and pick best
    condition_on_previous_text=True,  # Whether context matters across chunks
    fp16=False            # Force float32 if CPU-only
)

    label = 1 if "dementia" in filepath.lower() else 0

    records.append({
        "filename": os.path.basename(filepath),
        "full_path": filepath,
        "transcript": result['text'],
        "label": label
    })

# Create DataFrame
df = pd.DataFrame(records)

# Save to CSV
csv_output_path = "src/database/data/audio_transcripts.csv"
df.to_csv(csv_output_path, index=False)
print(f"Saved CSV: {csv_output_path}")

# Save to JSON
json_output_path = "src/database/data/audio_transcripts.json"
with open(json_output_path, 'w', encoding='utf-8') as f:
    json.dump(records, f, ensure_ascii=False, indent=4)
print(f"Saved JSON: {json_output_path}")
