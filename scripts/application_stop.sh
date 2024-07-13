#!/bin/bash

cd /home/ec2-user/server_backend

if pm2 list | grep -q "server"; then
    echo "Stopping server.js with pm2..."
    pm2 stop server
else
    echo "server is not running with pm2."
fi
