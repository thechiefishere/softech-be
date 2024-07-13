#!/bin/bash

# cd /home/ec2-user/server_backend
sudo chown -R ec2-user:ec2-user /home/ec2-user/server_backend

sudo yum install nodejs -y
sudo npm install -g npm@10.8.2
sudo npm install -g pm2
npm install