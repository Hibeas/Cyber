from fastapi import FastAPI
from fastapi.middleware.cors import CORSMiddleware
import psycopg2
from psycopg2.extras import RealDictCursor
import time

app = FastAPI()

app.add_middleware(
    CORSMiddleware,
    allow_origins=["*"],
    allow_methods=["*"],
    allow_headers=["*"],
)

def get_db_connection():
    for i in range(10):
        try:
            return psycopg2.connect(
                host="db",
                database="phish_db",
                user="user",
                password="password",
                cursor_factory=RealDictCursor
            )
        except:
            time.sleep(2)
    return None

@app.get("/api/quiz")
def get_quiz():
    conn = get_db_connection()
    if not conn:
        return {"error": "Database not ready"}
    cur = conn.cursor()
    cur.execute("SELECT * FROM phishing_scenarios;")
    questions = cur.fetchall()
    cur.close()
    conn.close()
    return questions

@app.get("/api/facts")
def get_facts():
    conn = get_db_connection()
    if not conn:
        return {"error": "Database not ready"}
    cur = conn.cursor()
    cur.execute("SELECT * FROM daily_facts;")
    facts = cur.fetchall()
    cur.close()
    conn.close()
    return facts