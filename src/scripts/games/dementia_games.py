import random
from scripts.tools.model_tools import CLINICAL_FEATURES, clinical_model
import pandas as pd

class DementiaTherapyGames:
    def __init__(self, patient_data: dict):

        self.patient_data = patient_data
        self.risk_level = self.calculate_risk_level(patient_data)
        self.game_difficulty = self.set_game_difficulty(self.risk_level)

    def calculate_risk_level(self, patient_data):
        encoded_data = patient_data.copy()
        encoded_data["Gender"] = 1 if patient_data.get("Gender") == "Female" else 0
        encoded_data["Hypertension"] = 1 if patient_data.get("Hypertension") == "Yes" else 0
        encoded_data["MemoryComplaints"] = 1 if patient_data.get("MemoryComplaints") == "Yes" else 0
        encoded_data["FamilyHistoryAlzheimers"] = 1 if patient_data.get("FamilyHistoryAlzheimers") == "Yes" else 0

        features = [encoded_data.get(feature, 0) for feature in CLINICAL_FEATURES]
        risk_score = clinical_model.predict(pd.DataFrame([features], columns=CLINICAL_FEATURES))[0]
        print(risk_score);
        return "high" if risk_score > 0.7 else "low"

    def set_game_difficulty(self, risk_level):
        return "easy" if risk_level == "high" else "hard"
    
    def generate_word_puzzle(self):
        words = ["memory", "dementia", "cognition", "brain", "neuro"]
        random.shuffle(words)
        grid = [["" for _ in range(5)] for _ in range(5)]
        for word in words[:3]:
            row, col = random.randint(0, 4), random.randint(0, 4)
            grid[row][col] = word[0]
            for i in range(1, len(word)):
                grid[row][(col + i) % 5] = word[i]
        return grid

    def generate_memory_game(self):
        items = ["apple", "banana", "cherry", "grape", "pear", "peach"]
        random.shuffle(items)
        pairs = items[:3]
        memory_game = pairs + pairs
        random.shuffle(memory_game)
        return memory_game
    
    def display_game(self):
        if self.game_difficulty == "easy":
            return {"game_type": "memory_match", "game": self.generate_memory_game()}
        else:
            return {"game_type": "word_search", "game": self.generate_word_puzzle()}