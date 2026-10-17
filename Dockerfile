FROM python:3.10-slim

# Install system dependencies
RUN apt-get update && apt-get install -y \
    git \
    libgl1 \
    libglib2.0-0 \
    libsm6 \
    libxext6 \
    libxrender1 \
    && rm -rf /var/lib/apt/lists/*

# Set working directory
WORKDIR /app

# Copy requirements and install
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Download CLIP model at build time so it's cached
RUN python -c "import clip; clip.load('ViT-B/32', device='cpu')"

# Copy app
COPY . .

# Expose port
EXPOSE 8501

# Run streamlit
CMD ["streamlit", "run", "app.py", "--server.port=8501", "--server.address=0.0.0.0", "--server.headless=true"]
