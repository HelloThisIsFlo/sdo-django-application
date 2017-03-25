#! /bin/bash

export PYTHONUNBUFFERED=1

# Install python 3.6
apt-get update
apt-get install -y software-properties-common
add-apt-repository ppa:jonathonf/python-3.6
apt-get update
apt-get install -y python3.6 python3.6-dev python-pip

# Update pip
pip install -U pip

# Install required dependencies
apt-get install -y libmysqlclient-dev

