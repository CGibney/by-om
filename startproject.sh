#!/bin/bash

# remote repo url
byom="https://github.com/CGibney/by-om"


# create directory
mkdir -p ~/projects/

# move to it 
cd ~/projects/

# now clone the remote repo
# .gitignore is included from our remote repo
git clone $byom by-om

# move to the cloned repo's folder
cd ~/projects/by-om/

# install and init your virtual environment for Django
sudo pip install virtualenv
virtualenv venv && source venv/bin/activate
# install django
pip install django
# start the project and name it by_om
django-admin startproject by_om








