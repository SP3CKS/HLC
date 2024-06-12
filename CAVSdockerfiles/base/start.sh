#!/bin/bash
set -e

ping -c 4 172.80.10.6

# Get environmetn
REPO=$REPO
DB_HOST=$DB_HOST
DB_PORT=$DB_PORT

cd /root/api
rm -rf .git

git config --global init.defaultBranch master
git config --global http.sslverify false
git init
git remote add origin ${REPO}
git branch -m master
git pull origin master

# Replace values in env. file
sed -i "s/127.0.0.1/${DB_HOST}/g" .env
sed -i "s/5433/${DB_PORT}/g" .env
cat .env


#Instalacion de npm
npm install -g npm-check-updates
npm install --force

npm install @nestjs/common

npm run start dev

tail -f /dev/null