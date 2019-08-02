# Help us with code - MacOS version

Hi! if you're willing to contribute with code to  **FLOSScoach** these are the simple setps you must follow to get your local machine ready for development. Tough easy and simple, these steps are estimated to take up to 30min.

## Step 0 - OS
We're focusing here on MacOS.
```bash
xcode-select --install
```
## Install HomeBrew
```bash
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```

## Install Yarn using HomeBrew 
This will also install Node.js if it is not already installed.
```bash
brew install yarn git curl zlib openssl libyaml sqlite3 readline libxml2 libffi
```

```bash
brew install rbenv ruby-build
ruby -v
```
Please note that we're installing Ruby version 2.3.*. If you have another version please do:

``` 
rbenv install 2.3.*
rbenv global 2.3.*
[where * is the latest version number]

```

```bash
sudo gem install bundler
```

```bash
git config --global color.ui true
git config --global user.name "Insert your name here"
git config --global user.email "yourEmailAdress@here.com"
```
You might want to use the same email as the one used for yout Github/lab account.

## Step 3 - Installing  Rails
```bash
sudo gem install rails -v 5.2.1
```


## Step 4 - Database: Setting up Sqlite3 and Postgre SQL
Installing Postgre SQL can be done with the following commands:
```bash
brew install postgresql@9.5
brew install libpq
```
Lastly, you need to set an user and password so then *FLOSScoach* database setup will be able to explore and modify the development database

```bash
export PATH="/usr/local/opt/postgresql@9.5/bin:$PATH"
# python is the username in the development set up.
createuser python -s -P
```
It's important to know that the default development password is **python** and you must set it just like this
```bash
```
In case you want different user/passoword just be sure to match these with 
the present in the *config/database.yml* file 

## Step 5 - Cloning the FLOSScoach repository
Now that everything is ready, it's time to clone the repository of the project to run your local development server and start contributing
```bash
cd ~
# Cloning the development branchcan be done like so: git clone -b <branch> <remote_repo>
git clone -b development https://gitlab.com/flosscoach/flosscoach.git
#Navigate to the newly created repository clone:
cd flosscoach
```

```bash
sudo gem install nokogiri -v '1.8.2' --source 'https://rubygems.org/'
bundle install
```

Some final small adjustments:
```bash
rake db:migrate RAILS_ENV=development
rails server -p 8000
```
Finally done!! See your local server running on [localhost:8000](http://localhost:8000)

## Step 6 - Merging your contributions
After you have finished writting some code these are the steps for adding your contribution to FLOSScoach:

### Step 6.1 - Add changes to GitLab
```bash
#cd to the project directory
cd flossccoach
#Add your local changes (. will add all changes done)
git add .
#Create a new commit
git commit -m "Insert commit message here"
#And then send it to the Gitlab repository 
git push origin development
#You will be prompted to insert your Gitlab login credentials then
```
### Step 6.2 Merging changes
To merge the changes you've done on development to master branch you can follow the excelent instructions from [Gitlab official docs](https://docs.gitlab.com/ee/gitlab-basics/add-merge-request.html).
It's quite simple to be done.


