FROM python3

RUN pip install django
COPY .

CMD ['python3', 'manage.py', 'runserver', '0.0.0.0:8005']

