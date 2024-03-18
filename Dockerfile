FROM python:3.12
RUN pip install poetry
COPY . /src
WORKDIR /src
RUN poetry install
EXPOSE 8501
ENTRYPOINT ["poetry", "run", "streamlit", "run", "app.py", "--server.port=8501", "--server.headless=true", "--browser.serverAddress=0.0.0.0:8501"]
# entrypoint ['poetry', 'run', 'python', 'main.py']