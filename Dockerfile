# Set base image
FROM python:3.9-slim-buster

# make an upgrade
RUN apt -qq update
RUN apt -qq install -y --no-install-recommends \
    git curl ffmpeg 

# requirements install 
COPY requirements.txt .
RUN pip install -U -r requirements.txt

# set working dir & run it
WORKDIR /app
COPY . /app
CMD ["python3", "main.py"]
