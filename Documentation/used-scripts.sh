#!/bin/bash 

cd linuxproject
mkdir helpd
cd helpd
vagrant init jasonc/centos8
vi Vagrantfile
vagrant up
sudo dnf install -y httpd
sudo dnf install -y php php-mysqlnd
sudo systemctl start httpd
sudo systemctl enable httpd
sudo dnf install -y mariadb-server
sudo systemctl start mariadb
sudo systemctl enable mariadb
sudo mysql_secure_installation
mysqladmin -u root -p create helpd
exit
