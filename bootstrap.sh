#!/usr/bin/env bash

sudo su

# MongoDB
# http://docs.mongodb.org/master/tutorial/install-mongodb-on-ubuntu/?_ga=1.36477344.1894666464.1444695957
apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 7F0CEB10
echo "deb http://repo.mongodb.org/apt/ubuntu trusty/mongodb-org/3.0 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-3.0.list
apt-get -y update
apt-get install -y mongodb-org

# nodejs
# https://nodejs.org/en/download/package-manager/#debian-and-ubuntu-based-linux-distributions
curl --silent --location https://deb.nodesource.com/setup_4.x | sudo bash -
apt-get install --yes nodejs
