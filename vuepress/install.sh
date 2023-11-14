#!/bin/bash

mkdir vuepress && cd vuepress

sudo apt remove cmdtest
sudo apt remove yarn -y
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
sudo apt-get update
sudo apt-get install yarn
yarn install

yarn init

curl -o node-v20.9.0-linux-x64.tar.xz https://nodejs.org/dist/v20.9.0/node-v20.9.0-linux-x64.tar.xz
tar -xJf node-v20.9.0-linux-x64.tar.xz
cd node-v20.9.0-linux-x64
sudo cp -r * /usr/local/
cd ..
rm node-v20.9.0-linux-x64 && rm node-v20.9.0-darwin-x64.tar.gz


yarn add -D vuepress

mkdir docs && echo '# Hello VuePress' > docs/README.md
