#!/bin/bash

echo "Checking location before switching"
ls -al
pwd
# cd /home/ec2-user/server_backend
sudo chown -R ec2-user:ec2-user /home/ec2-user/server_backend
echo "Checking location after switching"
ls -al
pwd

echo "Installing nodejs"
sudo yum install nodejs -y

echo "Installing latest npm"
sudo npm install -g npm@10.8.2

echo "Installing pm2"
sudo npm install -g pm2

echo "Switching to source code folder"
sudo su ec2-user
cd ~/server_backend

echo "Installing dependencies"
npm install