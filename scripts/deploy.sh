#!/bin/bash

export NVM_DIR="$HOME/.nvm"
source ~/.nvm/nvm.sh

TAG=$1

echo "Deploying tag: $TAG"
cd /var/www/nestjs-devops-vm

git fetch --all
git fetch --tags
git checkout tags/$TAG

npm install
npm run prisma:migrate:deploy
npm run build
pm2 restart nestjs-devops-vm

exit 0