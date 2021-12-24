#!/bin/bash
# sudo chmod 755 /var/www/server.js # optional
# this will restart app/server on instance reboot
#crontab -l | { cat; echo "@reboot pm2 start npm --name "Project-Name" -- start"; } | crontab -
#give permissions 777
sudo chmod -R 777 /var/www/html/nodecicd
#install dependecies
cd /var/www/html/Project-Name/ && npm install
#Check server running or not accordingly start or reload server
pm2 describe Project-Name > /dev/null
RUNNING=$?

if [ "${RUNNING}" -ne 0 ]; then
  pm2 start npm --name "nodecicd" -- start
else
  pm2 reload nodecicd
fi;

#save pm2
pm2 save
