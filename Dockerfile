FROM python:3.7.6

RUN echo "test12345"

WORKDIR /home/

RUN git clone https://github.com/jwtech05/restapi.git

WORKDIR /home/restapi/

RUN pip install -r requirements.txt

RUN python manage.py migrate

EXPOSE 5050

CMD ["python", "manage.py", "runserver", "0.0.0.0:5050"]
