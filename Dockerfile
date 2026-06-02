FROM python:3.9-slim
WORKDIR /app
RUN pip install -r requirements.txt
COPY requirements.txt .
RUN chmod +x .github/scripts/entrypoint.sh
ENTRYPOINT [".github/scripts/entrypoint.sh"]