# Setup machine to run the flosscoach project
pushd ~

echo 'Install some dependencies for Ruby'
sudo apt-get update
sudo apt-get -y install git-core curl zlib1g-dev\
 build-essential libssl-dev libreadline-dev libyaml-dev\
 libsqlite3-dev sqlite3 libxml2-dev libxslt1-dev\
 libcurl4-openssl-dev python-software-properties libffi-dev

echo 'Install rvm'
sudo apt-get install -y libgdbm-dev libncurses5-dev automake\
 libtool bison libffi-dev
gpg --keyserver hkp://keys.gnupg.net:80\
 --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3
curl -sSL https://get.rvm.io | bash -s stable
source ~/.rvm/scripts/rvm
rvm install 2.3.1
rvm use 2.3.1 --default
ruby -v

echo 'Install the Bundler'
gem install bundler

echo 'Install NodeJS'
curl -sL https://deb.nodesource.com/setup_4.x | sudo -E bash -
sudo apt-get install -y nodejs

echo 'Installing Rails'
gem install rails -v 5.0.0
rails -v

echo 'Installing Bootstrap 3'
npm install bootstrap@3

echo 'Cloning from the flosscoach repository'
git clone https://gitlab.com/MES2016/flosscoach.git
cd flosscoach/

echo 'Modifing a deprecated name of bcrypt (bcrypt-ruby)'
sed -i.orig -e 's|bcrypt-ruby|bcrypt|' Gemfile
bundle install
rake db:reset
rake doc:app

popd
