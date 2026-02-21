
# -------------------------------------------------------
# STAGE 1: Choose a base image to start from
# -------------------------------------------------------
  
FROM python:3.11-slim

# -------------------------------------------------------
# STAGE 2: Set up the working directory inside the container
# -------------------------------------------------------

WORKDIR /app

# -------------------------------------------------------
# STAGE 3: Copy and install dependencies first
# -------------------------------------------------------

COPY requirements.txt .

# -------------------------------------------------------
# STAGE 3: Copy and install dependencies first
# -------------------------------------------------------

RUN pip install --no-cache-dir -r requirements.txt

# -------------------------------------------------------
# STAGE 4: Copy your application code into the container
# -------------------------------------------------------

COPY app.py .

# -------------------------------------------------------
# STAGE 5: Tell Docker which port the app listens on
# -------------------------------------------------------

EXPOSE 80

# -------------------------------------------------------
# STAGE 6: Set the command to run when the container starts
# -------------------------------------------------------


CMD ["python3", "app.py"]
