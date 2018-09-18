#!/bin/bash
# For subsequent runs of the executable to be successfull the port number with in the conf needs to be overwritten to display port 80
sed -i 's/8080/80/' /etc/nginx/sites-available/default
# Install Nginx
sudo apt-get -y update
sudo apt-get -y install nginx
# Remove defualt index.html file and import index.html from github
cd /var/www/html/
sudo rm index.html
wget https://raw.githubusercontent.com/puppetlabs/exercise-webpage/master/index.html
cd /etc/nginx/sites-available/
# Write to conf so that port is listening to :8080. when this executable is run again the port will change back to 80 so that when the below command is run the port number is not changed to 808080
sed -i 's/80/8080' default
# Restart nginx to pick up changes
sudo service nginx restart

