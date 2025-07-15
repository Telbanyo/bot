FROM python:3.11-slim

# Set working directory inside container
WORKDIR /app

# Copy your bot code into the container
COPY . /app

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Start the bot at runtime, not during image build
CMD ["python3", "disc.py"]
