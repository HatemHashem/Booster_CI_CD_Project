FROM ubuntu:20.04
RUN apt update
RUN yes| apt install python3-pip 
ADD . /simpleApp
WORKDIR /simpleApp
COPY . .
RUN apt update
RUN pip3 install -r requirements.txt
RUN python3 manage.py makemigrations
RUN python3 manage.py migrate
CMD [ "python3", "manage.py", "runserver", "0.0.0.0:8000"]