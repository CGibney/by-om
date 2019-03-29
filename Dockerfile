# source inspiration https://medium.com/backticks-tildes/how-to-dockerize-a-django-application-a42df0cb0a99

# The first instruction is what image we want to base our container on
# We Use an official Python runtime as a parent image
FROM python:3.6

# The enviroment variable ensures that the python output is set straight
# to the terminal with out buffering it first
ENV PYTHONUNBUFFERED 1

# create root directory for our project in the container
# Unnecessary if your build context is from git?
#RUN mkdir /by_om

# Set the working directory to /music_service
WORKDIR /by_om

# make port 8080 available
EXPOSE 8080

# Copy the current directory contents into the container at /music_service
#ADD . /by_om/

# Install any needed packages specified in requirements.txt
RUN sudo pip install -r requirements.txt

RUN sudo python manage.py migrate
RUN sudo python manage.py runserver 0.0.0.0:8080
