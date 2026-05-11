# PhishShield Academy

PhishShield Academy is a full-stack, containerized micro-learning platform designed to turn employees into a "Human Firewall." Instead of passive training, users engage with real-world phishing simulations and "Security Facts of the Day" to build active defense habits.

## Product Description
PhishShield Academy solves the problem of "Security Fatigue" by providing a gamified, high-impact training interface. 

* **Interactive Quiz Engine:** Users analyze 10+ real-world phishing scenarios (BEC, Smishing, Spoofing) and receive immediate expert feedback.
* **Daily Insights:** A dedicated "Learn" mode provides bite-sized cybersecurity facts to ensure long-term knowledge retention.
* **Full-Stack Integrity:** Powered by a robust PostgreSQL database, a high-performance FastAPI backend, and a modern Angular frontend.

---

## Architecture Overview

The application follows a modern 3-tier architecture, fully orchestrated using Docker Compose. This ensures that the environment is identical across development, testing, and production.

### Project Structure
```text
phishshield-academy/
├── backend/                # FastAPI Application
│   ├── main.py             # API Routes & DB Logic
│   ├── Dockerfile          # Python Environment
│   └── requirements.txt    # Python Dependencies
├── frontend/               # Angular Application
│   ├── src/app/
│   │   ├── app.component.ts    # Logic
│   │   ├── app.component.html  # UI
│   │   └── app.component.css   # Styles
│   ├── Dockerfile          # Node/Nginx Environment
│   └── package.json        # JS Dependencies
├── db/                     # Database Configuration
│   └── init.sql            # Schema and Seed Data
├── docker-compose.yml      # Container Orchestration
└── README.md               # Project Documentation

### Component Breakdown
* **Frontend (Angular 17+):** A standalone, responsive SPA (Single Page Application) that communicates with the backend via RESTful APIs.
* **Backend (FastAPI/Python):** A high-performance asynchronous API layer that handles business logic, database queries, and CORS security.
* **Database (PostgreSQL 15):** A persistent relational database that stores phishing scenarios and educational facts, initialized automatically via SQL scripts.
* **Orchestration (Docker):** Each component is isolated in its own container, communicating over a private internal network.

---

## Setup Instructions

### Prerequisites
* Docker Desktop installed and running.

### Installation and Deployment
1. Open your terminal in the project root directory.
2. Run the following command to build and start all services:
   ```bash
   docker-compose up --build
