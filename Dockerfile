###############################
##    Dockerfile python app  ##
###############################

# Set the base image to unbuntu
FROM ubuntu

ENV PYTHONUNBUFFERED 1

# Install python version 3.6
RUN apt-get update
RUN apt-get install -y software-properties-common
RUN add-apt-repository ppa:jonathonf/python-3.6

RUN apt-get update
RUN apt-get install -y python3.6 python3.6-dev python-pip

# Install required dependencies
RUN apt-get install -y libmysqlclient-dev

# Copy project 
RUN mkdir /code
WORKDIR /code
COPY . /code/

# Install our requirements
RUN pip install -U pip
RUN pip install -Ur requirements.txt

## END SETUP #######################################

# Make the port available to other docker containers (but not host, need to publish for that)
EXPOSE 8000

# Command to run when the image is run
#CMD ["python", "/code/manage.py", "test", "--noinput"]
CMD ["tox"]
#CMD ["python", "/code/manage.py", "runserver", "0.0.0.0:8000"]



