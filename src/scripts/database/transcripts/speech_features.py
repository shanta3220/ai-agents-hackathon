import pandas as pd
import re

# 1. Load your transcripts CSV
df = pd.read_csv('src/database/data/transcripts/audio_transcripts.csv')  # Change to your correct path

print("Loaded transcripts!")
print(df.head())  # Preview to double-check the structure

# 2. Define Feature Extraction Functions
def count_words(text):
    """Count the number of words in the transcript."""
    words = re.findall(r'\b\w+\b', text)
    return len(words)

def count_sentences(text):
    """Count the number of sentences based on ., !, or ? endings."""
    sentences = re.split(r'[.!?]+', text)
    sentences = [s.strip() for s in sentences if s.strip()]
    return len(sentences)

def avg_sentence_length(text):
    """Calculate the average number of words per sentence."""
    words = count_words(text)
    sentences = count_sentences(text)
    if sentences == 0:
        return words  # Avoid division by zero (e.g., single sentence paragraph)
    return words / sentences

# 3. Apply Feature Extraction to Each Transcript
df['word_count'] = df['transcript'].apply(count_words)
df['sentence_count'] = df['transcript'].apply(count_sentences)
df['avg_sentence_length'] = df['transcript'].apply(avg_sentence_length)

print("Extracted speech features!")
print(df[['filename', 'word_count', 'sentence_count', 'avg_sentence_length', 'label']].head())

# 4. Save the New Features into a New CSV
df[['filename', 'word_count', 'sentence_count', 'avg_sentence_length', 'label']].to_csv('src/database/data/transcripts/speech_features.csv', index=False)

print("Features saved to 'src/database/data/transcripts/speech_features.csv'")