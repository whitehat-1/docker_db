FROM python:3.10.1

ENV PYTHONUNBUFFERED=1
ENV PYTHONDONTWRITEBYTECODE=1

# Only update packages
RUN apt-get update

# Set working directory
WORKDIR /docker_db

# copy requirements files
COPY ./requirements.txt /project/requirements.txt

# install requirements
RUN pip install -r requirements.txt

# Copy codebase
COPY . /docker_db/

# create a new user
RUN adduser --disabled-password --gecos '' kodecamp

# Set user as the owner of directory
RUN chown -R kodecamp:kodecamp /docker_db

# Set user to be kodecamp
USER kodecamp