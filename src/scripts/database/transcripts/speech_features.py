import pandas as pd
import re
import os
import wave

# 1. Load your transcripts CSV
csv_path = 'src/database/data/transcripts/audio_transcripts.csv'  # Update path if needed
df = pd.read_csv(csv_path)

print("Loaded transcripts!")
print(df.head())

# 2. Define Feature Extraction Functions
def count_words(text):
    """Count the number of words in the transcript."""
    if not isinstance(text, str):
        return 0
    words = re.findall(r'\b\w+\b', text)
    return len(words)

def count_sentences(text):
    """Count the number of sentences based on punctuation."""
    if not isinstance(text, str):
        return 0
    sentences = re.split(r'[.!?]+', text)
    sentences = [s.strip() for s in sentences if s.strip()]
    return len(sentences)

def avg_sentence_length(text):
    """Calculate the average number of words per sentence."""
    words = count_words(text)
    sentences = count_sentences(text)
    if sentences == 0:
        return words  # Avoid division by zero
    return words / sentences

def estimate_pause_count(text):
    """Estimate pause count based on punctuation marks."""
    if not isinstance(text, str):
        return 0
    commas = text.count(',')
    periods = text.count('.')
    ellipses = text.count('...')
    question_marks = text.count('?')
    exclamations = text.count('!')
    return commas + periods + ellipses + question_marks + exclamations

def get_audio_duration(filepath):
    """Get duration of the audio file in seconds."""
    try:
        filepath = filepath.replace("\\", "/")  # Normalize slashes
        with wave.open(filepath, 'r') as f:
            frames = f.getnframes()
            rate = f.getframerate()
            duration = frames / float(rate)
        return duration
    except Exception as e:
        print(f"⚠️ Error reading {filepath}: {e}")
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

# 4. Get Audio Durations
df['duration'] = df['full_path'].apply(get_audio_duration)

# 5. Calculate Speech Rate
df['speech_rate'] = df.apply(lambda row: calculate_speech_rate(row['word_count'], row['duration']), axis=1)

print("Extracted all speech features!")
print(df[['filename', 'word_count', 'sentence_count', 'avg_sentence_length', 'pause_count', 'speech_rate', 'label']].head())

# 6. Save the speech_features.csv
output_path = 'src/database/data/transcripts/speech_features.csv'
df[['filename', 'word_count', 'sentence_count', 'avg_sentence_length', 'pause_count', 'speech_rate', 'label']].to_csv(output_path, index=False)

print(f"Features saved to '{output_path}'")
