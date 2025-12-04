# 🔄 Customer Churn Prediction

A machine learning-powered web application that predicts customer churn using Random Forest and Decision Tree models. Built with Flask backend and deployed with Docker support.

## 🌐 Live Website

**Access the live application here:** [https://khush-purohit.github.io/CustomerChurn/](https://khush-purohit.github.io/CustomerChurn/)

## 📋 Table of Contents

- [Features](#-features)
- [Tech Stack](#-tech-stack)
- [Installation](#-installation)
  - [Local Installation](#local-installation)
  - [Docker Installation](#docker-installation)
- [Usage](#-usage)
- [API Endpoints](#-api-endpoints)
- [Project Structure](#-project-structure)

## ✨ Features

- Predict customer churn using two ML models:
  - **Random Forest Classifier**
  - **Decision Tree Classifier**
- RESTful API for predictions
- CORS-enabled for cross-origin requests
- Docker containerization for easy deployment
- Health check endpoint for monitoring

## 🛠 Tech Stack

- **Backend:** Flask 3.0.3, Flask-CORS
- **ML Libraries:** scikit-learn, pandas, numpy
- **Server:** Gunicorn
- **Containerization:** Docker
- **Frontend:** HTML, CSS

## 🚀 Installation

### Prerequisites

- Python 3.11+
- Docker (for containerized deployment)
- Git

### Local Installation

1. **Clone the repository**
   ```bash
   git clone https://github.com/Khush-Purohit/CustomerChurn.git
   cd CustomerChurn
   ```

2. **Create a virtual environment (recommended)**
   ```bash
   python -m venv venv
   
   # On Windows
   venv\Scripts\activate
   
   # On macOS/Linux
   source venv/bin/activate
   ```

3. **Install dependencies**
   ```bash
   pip install -r requirements.txt
   ```

4.  **Run the application**
   ```bash
   # Development mode
   python app.py
   
   # Production mode with Gunicorn
   gunicorn --bind 0.0.0.0:5000 app:app
   ```

5. **Access the application**
   
   Open your browser and navigate to `http://localhost:5000`

### Docker Installation

1. **Pull the repository from dockerhub**
   ```bash
   docker pull khushpurohit12/customerchurn
   ```

2. **Run the Docker container**
   ```bash
   docker run -p 5000:5000 khushpurohit12/customerchurn
   ```

3. **Access the application**
   
   Open your browser and navigate to `http://localhost:5000`

## 📖 Usage

1. Navigate to the web application
2. Fill in the customer information form with details such as:
   - Senior Citizen status
   - Monthly & Total Charges
   - Gender, Partner, Dependents
   - Phone Service, Internet Service
   - Contract type, Payment method
   - And more...
3. Submit the form to get churn predictions from both models
4.  The application will return predictions indicating whether the customer is likely to churn


## 📁 Project Structure

```
CustomerChurn/
├── app.py                    # Flask application
├── Dockerfile                # Docker configuration
├── requirements. txt          # Python dependencies
├── render. yaml               # Render deployment config
├── runtime.txt               # Python runtime version
├── index.html                # Frontend HTML
├── style.css                 # Frontend styles
├── dataset. csv               # Training dataset
├── training_model.ipynb      # Jupyter notebook for model training
├── random_forest_model. pkl   # Trained Random Forest model
├── decision_tree_model.pkl   # Trained Decision Tree model
├── . dockerignore             # Docker ignore file
└── . github/                  # GitHub configurations
```

## 📄 License

This project is open source and available under the [MIT License](LICENSE). 

## 👤 Author

**Khush Purohit**
- GitHub: (https://github.com/Khush-Purohit)

---

⭐ If you found this project helpful, please consider giving it a star! 
