# jobtest
MyRun.sh is a bash script which installs nginx server and imports index.html from https://github.com/puppetlabs/exercise-webpage
After this the conf file found in /etc/nginx/sites-available/default is removed and replaced by a defualt conf file editted to serve port:8080 

Nginx is then restarted to pick up the changes 
