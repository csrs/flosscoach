# Contributing to FLOSScoach project
FLOSScoach is built as an academic effort to provide better organization to support newcomers.
We appreciate any community support, helping us with the following steps, interesting ideas,
bug fixing, document improvement. In summary, there are many ways you can support our community.
These are some of the options if you want to support us:
- [File an issue (bug report or new feature request)](#file-an-issue)
- [Work on GitLab documentation](#work-on-documentation)
- [Help us coding: adding features or fixing bugs](#help-us-with-code)


# File an issue
- Did you find any problem while using FLOSScoach?
- Do you have any great idea of new feature that would make FLOSScoach nicer? 

Don't keep it to yourself. Please let us know! Reporting issues and providing feature requests are one of the things that makes Open Source amazing. 
Please help us by creating a new issue report in our GitLab repository (either bug report or feature request). 

To do so, go to the list of issues in our GitLab page, create a ``New Issue'' and provide as much details as you can in your report. 
Remember to stay tuned in your issue to provide more details as requested by other members in the follow up comments.


# Work on documentation 
Another nice and easy way to start contributing to the project is by fixing issues or adding information to our documentation. 
To do so, you just need to 
1. navigate to the desired file (in this project they are usually markdown -- .md -- files); 
2. edit in the GitLab editor; 
3. submit your change request following the GitLab workflow.


# Help us with code

Hi! if you're willing to contribute with code to  **FLOSScoach** these are the simple setps you must follow to get your local machine ready for development. Tough easy and simple, these steps are estimated to take up to 30min.

## Step 0 - OS
We're focusing here on MacOS.

xcode-select --install

## Install HomeBrew
```/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

## Install Yarn using HomeBrew 
This will also install Node.js if it is not already installed.
```brew install yarn
brew install git
brew install curl
brew install zlib
brew install openssl
brew install libyaml
brew install sqlite3
brew install readline
brew install libxml2
brew install libffi





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
sudo sh -c "echo 'deb http://apt.postgresql.org/pub/repos/apt/ xenial-pgdg main' > /etc/apt/sources.list.d/pgdg.list"
wget --quiet -O - http://apt.postgresql.org/pub/repos/apt/ACCC4CF8.asc | sudo apt-key add -
sudo apt-get update
sudo apt-get install postgresql-common
sudo apt-get install postgresql-9.5 libpq-dev
```
Lastly, you need to set an user and password so then *FLOSScoach* database setup will be albe to explore and modify the development database
```bash
# python is the username in the development set up.
sudo -u postgres createuser python -s
```
It's important to jnow that the default development password is **python** and you must set it just like this
```bash
# Setting password for the user named python:
sudo -u postgres psql
\password python
# And you will be prompted to type the new password
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


