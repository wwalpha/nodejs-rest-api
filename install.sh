curl -sL https://rpm.nodesource.com/setup_12.x | sudo bash -
curl -sL https://dl.yarnpkg.com/rpm/yarn.repo | sudo tee /etc/yum.repos.d/yarn.repo

sudo yum install -y nodejs
sudo yum install -y yarn

# background
npm install -g forever

# install libraries
yarn install
