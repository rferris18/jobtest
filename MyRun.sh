#!/bin/bash

# Install Nginx
apt-get -y update
apt-get -y install nginx
# Remove defualt index.html file and import index.html from github
cd /var/www/html/
rm index.html
wget https://raw.githubusercontent.com/puppetlabs/exercise-webpage/master/index.html
cd /etc/nginx/sites-available/
rm default
# Write listening port to :8080 remove default file and replace with updated configuration
wget https://raw.githubusercontent.com/rferris18/jobtest/master/default
# Restart nginx to pick up changes
sudo service nginx restart
