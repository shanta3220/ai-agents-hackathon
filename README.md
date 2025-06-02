# 🧠 Nuroxa AI Agent  
Nuroxa is an AI-powered dementia risk analysis assistant built with Python, Azure AI Services and Chainlit, designed to support healthcare professionals by predicting dementia risk using clinical profiles, audio features, and speech transcripts. It can query real patient databases, generate visualizations, and deliver cognitive therapy games tailored to patient data—all through a conversational, empathetic interface optimized for clarity and decision support.


▶️ [Click here to watch the demo video](https://youtu.be/5N6_jXB1R3U?si=3C6I-uX5sWfIaZJB)

## 🚀 Features  
- 🗣️ Clinical profile, audio-based, and transcript-based risk analysis using machine learning
- 🗄️ Database querying based on real patient data
- 🎮 Cognitive therapy games with diagram 
- 🔄 Real-time prediction and feedback
- 📊 Visualizations utilizing the database
- ⚡ FastAPI backend for model inference
- 🔬 Feature extraction from MFCCs, energy, and silence
- 💬 Chat interface powered by Chainlit

Note: Some features are planned for future implementation and are not yet active.

## 🛠️ Tech Stack
- Python
- FastAPI
- Chainlit
- scikit-learn
- OpenAI Whisper
- Librosa
- pandas
- numpy
- Docker

## 📁 Project Structure
<pre>
├── bin/
│   └── ffmpeg.exe                    # Binary for audio processing
│
├── public/                           # Static/public assets (if any)
│
├── resources/
│   ├── Dementia/                     # Labeled dementia audio files
│   └── Nodementia/                   # Labeled non-dementia audio files
│
├── scripts/                          # 🔧 Core logic & modules
│   ├── api.py                        # FastAPI backend for prediction
│
│   ├── database/
│   │   ├── data/
│   │   │   ├── generate_dementia_patients_db.py
│   │   │   ├── generate_mock_predict_db.py
│   │   │   ├── read_dementia_patients_db.py
│   │   │   └── read_mock_predict_db.py
│   │   ├── transcripts/
│   │   │   ├── speech_features.py   # Extracts MFCCs, pauses, energy
│   │   │   └── transcript_generator.py
│
│   ├── games/
│   │   └── dementia_games.py         # 🧠 Therapy games for cognitive stimulation
│
│   ├── model_training/
│   │   ├── test_risk_and_audio_model.py
│   │   └── transcript_model_trainer.py
│
│   ├── tools/                        # 🛠️ Tools used by the AI agent
│   │   ├── game_tools.py             # Tools that guide game behavior
│   │   └── model_tools.py            # Tools for loading, preprocessing, prediction logic
│
├── .env / .env.example               # Environment variables
├── requirements.txt                  # Python package dependencies
├── Dockerfile / .dockerignore        # Containerization configs
├── chainlit.md                       # Instructions to launch Chainlit frontend
├── main.py                           # Chainlit entry point
├── app.py                            # App bootstrap (if needed)

</pre>

## ⚙️ Setup & Run

1. **Ensure Prerequisites**:
   - Install the Azure CLI: https://learn.microsoft.com/en-us/cli/azure/install-azure-cli
   - Authenticate with your Azure account:
<pre>
bash
az login
</pre>

2. **Copy the Example Environment File**:
<pre>
bash
cp .env.example src/.env
</pre>

3. **Install Dependencies**:
<pre>
bash
pip install -r requirements-dev.txt
</pre>

4. **Run Locally**:
<pre>
bash
cd src
uvicorn api:app --reload --port 8000
</pre>

5. **Launch Chainlit Interface**:
<pre>
bash
chainlit run chainlit/main.py
</pre>

---

## 🌐 Deployment (Azure)

To deploy the project to Azure, you can use the provided `deploy.sh` script which automates deployment using Azure CLI and Bicep.

### Prerequisites
- Azure CLI installed
- Logged in to Azure:
<pre>
bash
az login
</pre>
- .env file configured in `src/.env` with variables like:
  - AZURE_OPENAI_ENDPOINT
  - AZURE_OPENAI_API_KEY
  - AZURE_OPENAI_DEPLOYMENT
  - AZURE_OPENAI_API_VERSION
  - AZURE_OPENAI_ASSISTANT_ID
  - ASSISTANT_PASSWORD
  - AZURE_OPENAI_RESOURCE
  - AZURE_OPENAI_RESOURCE_GROUP
  - AZURE_OPENAI_RESOURCE_LOCATION
  - AZURE_ASSISTANT_NAME
  - CONTAINER_APP_ENVIRONMENT_NAME
  - CONTAINER_APP_ENVIRONMENT_RESOURCE_GROUP
  - LITERAL_API_KEY
  - CHAINLIT_AUTH_SECRET

**Note:** For more detailed deployment instructions, see the [Official Contoso Sales Azure Assistant guide](https://azure-samples.github.io/contoso-sales-azure-openai-assistants-api/development/).

### Run Deployment Script
<pre>
bash
./deploy.sh
</pre>

This will:
- Validate `.env` file
- Load environment variables
- Use `infra/main.bicep` to provision Azure resources

## 🧪 Model Training (Overview)
We used annotated audio clips and extracted features like MFCCs, signal energy, and pause patterns using Librosa. The processed data was then used to train a scikit-learn classifier, saved as risk_predictor.pkl.

## 👥 Team
Built by Nusrat Jahan Shanta, Kate Dunovskaia, Tashrif Mahmud, Shashika Kahatapitiya, and Gurneer Bedi during the MS AI Agents Hackathon.

## 📚 Acknowledgements

- **Clinical Dataset**: Utilized the [Alzheimer's Disease Dataset](https://www.kaggle.com/datasets/rabieelkharoua/alzheimers-disease-dataset) by Rabie El Kharoua, which provided comprehensive patient profiles for training and evaluation.
- **Frontend Inspiration**: The [Contoso Sales AI Assistant](https://azure-samples.github.io/contoso-sales-azure-openai-assistants-api/) served as a foundational template for our Chainlit-based conversational UI and Azure deployment strategy.
- **Audio Samples**: Incorporated speech data from [DementiaNet](https://github.com/shreyasgite/dementianet) to train and test our audio-based dementia risk prediction models.
