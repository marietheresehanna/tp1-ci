# 1) Start from a small official Python image
FROM python:3.12-slim

# 2) Create a working folder inside the container
WORKDIR /app

# 3) Copy your source code and tests into the container
COPY src/ src/
COPY tests/ tests/

# 4) Update pip (and later you could: pip install -r requirements.txt)
RUN python -m pip install --upgrade pip

# 5) Default command (runs tests when the container starts)
CMD ["python", "-m", "unittest", "-v"]
