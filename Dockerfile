FROM python:3.9
WORKDIR /app
COPY requirements.txt /app/
COPY . /app/
RUN pip install -r requirements.txt
EXPOSE 8000
ENTRYPOINT [ "python3","manage.py","runserver","0.0.0.0:8000" ]