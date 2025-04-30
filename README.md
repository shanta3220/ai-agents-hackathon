# 🧠 Nuroxa AI Agent  
Nuroxa is an AI-powered assistant designed to analyze short audio inputs and assess behavioral risk using speech patterns like pauses, energy, and signal variation. Built with FastAPI and Chainlit, it offers a seamless, interactive interface for both backend predictions and frontend chat-based use.

## 🚀 Features  

🗣️ Audio-based risk analysis using machine learning  

🔬 Feature extraction from MFCCs, energy, and silence  

🔄 Real-time prediction and feedback  

💬 Chat interface powered by Chainlit  

⚡ FastAPI backend for model inference

## 🛠️ Tech Stack
- Python 3.12
- FastAPI
- Uvicorn
- Chainlit
- scikit-learn / joblib
- Librosa (for audio feature extraction)
- Azure Bicep (for deployment)

## 📁 Project Structure
<pre>
├── src/  
│   ├── api.py              # FastAPI app with prediction endpoints  
│   ├── model/              # Pretrained model artifacts  
│   └── utils.py            # Audio processing utilities  
├── chainlit/               # Chainlit frontend interface  
├── deploy.sh               # Deployment script  
├── main.bicep              # Azure deployment configuration  
└── README.md  
</pre>

## ⚙️ Setup & Run
1. Install dependencies
pip install -r requirements.txt

2. Run Locally
cd src
uvicorn api:app --reload --port 8000

3. Launch Chainlit interface
chainlit run chainlit/main.py

## 🌐 Deployment
Deploy using Azure Developer CLI and Bicep. Update the .env file with required values before running:
azd up

## 🧪 Model Training (Overview)
We used annotated audio clips and extracted features like MFCCs, signal energy, and pause patterns using Librosa. The processed data was then used to train a scikit-learn classifier, saved as risk_predictor.pkl.

## 👥 Team
Built by Nusrat Jahan Shanta, Ekaterina Dunovskaia, Shashika Kahatapitiya during the MS AI Agents Hackathon.

