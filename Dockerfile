###############################
##    Dockerfile python app  ##
###############################
# Use base image with python
FROM python:3.6

# Update pip 
RUN pip install -U pip


####################
# Project specific #
####################
# Copy project 
RUN mkdir /code
WORKDIR /code
COPY . /code/

# Install our requirements
RUN pip install -Ur requirements.txt


## Note:
## The MySql `libmysqlclient-dev` dependency is no more needed, 
## since it's included by default in the python image
