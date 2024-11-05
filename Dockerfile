# Use the official lightweight Python image
FROM python:3.11-slim

# Copy local code to the container image
ENV APP_HOME /app
WORKDIR $APP_HOME
COPY . ./

# Instal production dependencies
RUN pip install --no-cache-dir -r requirements.txt

# listen to specific port (for streamlit 8501)
EXPOSE 8080

# test a container to check if it's still working
# HEALTHCHECK CMD curl --fail http://localhost:8501/_stcore/health

# run the streamlit command inside the container
ENTRYPOINT ["streamlit", "run", "main.py", "--server.port=8080", "--server.address=0.0.0.0"]