# Use Python instead of Node
FROM python:3.11-slim

WORKDIR /app

# Copy Python requirements
COPY requirements.txt .

# Install Python libraries
RUN pip install --no-cache-dir -r requirements.txt

# Copy the Python code (main.py)
COPY . .

EXPOSE 8000

# Command to start FastAPI
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]