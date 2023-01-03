#! /bin/bash
yum update -y
yum install httpd -y
cd /var/www/html
chmod -R 777 /var/www/html
FOLDER="https://raw.githubusercontent.com/lionsaver/project020123/main/static-web/"
wget ${FOLDER}index.html
wget ${FOLDER}cat0.jpg
wget ${FOLDER}cat1.jpg
wget ${FOLDER}cat2.jpg
wget ${FOLDER}cat3.png
systemctl start httpd
systemctl enable httpd
