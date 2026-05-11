PhishShield Academy
PhishShield Academy is a full-stack, containerized micro-learning platform designed to turn employees into a "Human Firewall." Instead of passive training, users engage with real-world phishing simulations and "Security Facts of the Day" to build active defense habits.

Product Description
PhishShield Academy solves the problem of "Security Fatigue" by providing a gamified, high-impact training interface.

Interactive Quiz Engine: Users analyze 10+ real-world phishing scenarios (BEC, Smishing, Spoofing) and receive immediate expert feedback.

Daily Insights: A dedicated "Learn" mode provides bite-sized cybersecurity facts to ensure long-term knowledge retention.

Full-Stack Integrity: Powered by a robust PostgreSQL database, a high-performance FastAPI backend, and a modern Angular frontend.

Architecture Overview
The application follows a modern 3-tier architecture, fully orchestrated using Docker Compose. This ensures that the environment is identical across development, testing, and production.

Component Breakdown
Frontend (Angular 17+): A standalone, responsive SPA (Single Page Application) that communicates with the backend via RESTful APIs.

Backend (FastAPI/Python): A high-performance asynchronous API layer that handles business logic, database queries, and CORS security.

Database (PostgreSQL 15): A persistent relational database that stores phishing scenarios and educational facts, initialized automatically via SQL scripts.

Orchestration (Docker): Each component is isolated in its own container, communicating over a private internal network.

Setup Instructions
Prerequisites
Docker Desktop installed and running.

One-Command Start
Open your terminal in the project root directory.

Run the following command:

docker-compose up --build
Access the Application:

Frontend: http://localhost:3000

Backend API: http://localhost:8000/api/quiz

Note: The first time you run this, the database will automatically initialize using the init.sql script located in the /db folder.

Known Limitations
Stateless Sessions: The current version does not store user progress in the database; refreshing the browser resets the score.

Mock Authentication: The platform currently operates in a "Demo Mode" without a login gate to allow for immediate testing.

Hardcoded API URL: The frontend is configured to point to localhost. For production deployment, an environment variable configuration for the API endpoint would be required.

Admin Panel: Adding new phishing scenarios currently requires manual SQL injection into init.sql rather than a dedicated UI dashboard.

Tech Stack
Frontend: Angular, TypeScript, CSS3

Backend: Python, FastAPI, Psycopg2

Database: PostgreSQL

DevOps: Docker, Docker Compose
