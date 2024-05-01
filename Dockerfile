#this Dockerfile sets up a containerized environment for a Django project, installs Django, applies migrations, exposes port 8000, and 
starts the Django development server#

FROM python:3 # This line sets the base image for the Docker container#

WORKDIR /data #This line sets the working directory inside the container to /data. This is where subsequent commands will be executed unless otherwise specified#

RUN pip install django==3.2

COPY . .

RUN python manage.py migrate #This line runs Django's manage.py migrate command inside the container. This command applies any pending database migrations#

EXPOSE 8000

CMD ["python","manage.py","runserver","0.0.0.0:8000"]


