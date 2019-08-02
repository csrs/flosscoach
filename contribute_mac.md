# Help us with code - MacOS version

Hi! if you're willing to contribute with code to  **FLOSScoach** these are the simple setps you must follow to get your local machine ready for development. Tough easy and simple, these steps are estimated to take up to 30min.

## Step 0 - OS / libraries
We're focusing here on MacOS.

Make sure that your MacOS is up-to-date, as well as your Xcode app (you can install it via App Store).

## Step 1 - Install HomeBrew
```bash
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```

## Step 2 - Install Ruby via renv
First you need to install renv
```bash
brew install rbenv ruby-build
ruby -v
```
Please note that we're installing Ruby version 2.4.0. If this is not the version you are running, please do: 
``` 
rbenv install 2.4.0
rbenv global 2.4.0
```
## Step 3 - Setup you git (maybe this is already set on your machine)

```bash
git config --global color.ui true
git config --global user.name "Insert your name here"
git config --global user.email "yourEmailAdress@here.com"
```
You might want to use the same email as the one used for yout Github/lab account.

## Step 4 - Installing Bundler and Rails 
```bash
gem install bundler
gem install rails -v 5.2.1
```

## Step 4 - Database: Installing and setting up PostgreSQL
Installing PostgreSQL (in the right version) can be done with the following command:
```bash
brew install postgresql@9.5
```
Now...You need to have postgres up and running
```bash
export PATH="/usr/local/opt/postgresql@9.5/bin:$PATH"
brew services start postgresql@9.5
```
Lastly, you need to set a DB user and password so then *FLOSScoach* database setup will be able to explore and modify the development database

```bash
# python is the username (and the password) in the development set up.
createuser python -s -P
[It will prompt to enter a password: use python]
```
**AGAIN:** It is important to know that the default development password is **python** and you must set it just like this. 
In case you want different user/passoword just be sure to match these with the present in the *config/database.yml* file in your project

## Step 5 - Cloning the FLOSScoach repository
Now that everything is ready, it's time to clone the repository of the project to run your local development server and start contributing
```bash
cd ~
# Cloning the development branchcan be done like so: git clone -b <branch> <remote_repo>
git clone -b development https://gitlab.com/flosscoach/flosscoach.git
#Navigate to the newly created repository clone:
cd flosscoach
```

## Step 6 - MAKE IT RUN!!!

Let's get it on
```bash
bundle install
rake db:migrate RAILS_ENV=development
rails server -p 8000
```
Finally done!! See your local server running on [localhost:8000](http://localhost:8000)

## Step 7 - Merging your contributions
Write the code you need... 
After you have finished writting some code these are the steps for adding your contribution to FLOSScoach:

### Step 7.1 - Add changes to GitLab
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
### Step 7.2 Merging changes
To merge the changes you've done on development to master branch you can follow the excelent instructions from [Gitlab official docs](https://docs.gitlab.com/ee/gitlab-basics/add-merge-request.html).
It's quite simple to be done.


