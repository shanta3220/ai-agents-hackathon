import pandas as pd
import re
import os
import wave

# 1. Load your transcripts CSV
csv_path = 'src/database/data/transcripts/audio_transcripts.csv'  # Adjust if needed
df = pd.read_csv(csv_path)

print("Loaded transcripts!")
print(df.head())

# 2. Define Feature Extraction Functions
def count_words(text):
    """Count number of words."""
    if not isinstance(text, str):
        return 0
    words = re.findall(r'\b\w+\b', text)
    return len(words)

def count_sentences(text):
    """Count number of sentences based on . ! ?"""
    if not isinstance(text, str):
        return 0
    sentences = re.split(r'[.!?]+', text)
    sentences = [s.strip() for s in sentences if s.strip()]
    return len(sentences)

def avg_sentence_length(text):
    """Calculate average words per sentence."""
    words = count_words(text)
    sentences = count_sentences(text)
    if sentences == 0:
        return words  # avoid division by zero
    return words / sentences

def estimate_pause_count(text):
    """Estimate pause count based on common punctuation."""
    if not isinstance(text, str):
        return 0
    commas = text.count(',')
    periods = text.count('.')
    ellipses = text.count('...')
    question_marks = text.count('?')
    exclamations = text.count('!')
    return commas + periods + ellipses + question_marks + exclamations

def get_audio_duration(filepath):
    """Get duration of the audio file (seconds)."""
    try:
        filepath = filepath.replace("\\", "/")  # Normalize path
        with wave.open(filepath, 'r') as f:
            frames = f.getnframes()
            rate = f.getframerate()
            duration = frames / float(rate)
        return duration
    except Exception as e:
        print(f"Error reading {filepath}: {e}")
        return None

def calculate_speech_rate(word_count, duration):
    """Calculate speech rate (words per second)."""
    if duration and duration > 0:
        return word_count / duration
    return 0

# 3. Apply Feature Extraction
df['word_count'] = df['transcript'].apply(count_words)
df['sentence_count'] = df['transcript'].apply(count_sentences)
df['avg_sentence_length'] = df['transcript'].apply(avg_sentence_length)
df['pause_count'] = df['transcript'].apply(estimate_pause_count)

# 4. Get Audio Duration
df['duration'] = df['full_path'].apply(get_audio_duration)

# 5. Calculate Speech Rate
df['speech_rate'] = df.apply(lambda row: calculate_speech_rate(row['word_count'], row['duration']), axis=1)

# 6. Calculate Pause Per Sentence
df['pause_per_sentence'] = df.apply(lambda row: row['pause_count'] / (row['sentence_count'] + 1e-5), axis=1)  # Small value to avoid division by zero


print("Extracted all speech features!")
print(df[['filename', 'word_count', 'sentence_count', 'avg_sentence_length', 'pause_count', 'speech_rate', 'pause_per_sentence', 'label']].head())

# 7. Save New Features
output_path = 'src/database/data/transcripts/speech_features.csv'
df[['filename', 'word_count', 'sentence_count', 'avg_sentence_length', 'pause_count', 'speech_rate', 'pause_per_sentence', 'label']].to_csv(output_path, index=False)

print(f"Features saved to '{output_path}'")
