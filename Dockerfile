###############################
##    Dockerfile python app  ##
###############################

# Set the base image to unbuntu
FROM ubuntu

# Install python version 3.6
COPY ./provision.sh /provision.sh
RUN /provision.sh

# Copy project 
RUN mkdir /code
WORKDIR /code
COPY . /code/

# Install our requirements
RUN pip install -Ur requirements.txt



# Make the port available to other docker containers (but not host, need to publish for that)
#EXPOSE 8000

# Command to run when the image is run
#CMD ["python", "/code/manage.py", "test", "--noinput"]
#CMD ["tox"]
#CMD ["python", "/code/manage.py", "runserver", "0.0.0.0:8000"]



