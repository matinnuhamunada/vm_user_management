#!/bin/bash
set -e

if [ "$1" != "" ]; then
    echo "Processing..."
else
    echo "Error: user id is not valid"
    exit 1
fi

# change user_id and password accordingly
# generate your password encryption with the perl script below
# perl -e 'print crypt("Your-Clear-Text-Password-Here", "salt"),"\n"'

echo "Creating a new account for" $1
#read -p "Enter user id : " USER_ID
PASSWORD=saXFsD6Vbt0aY
sudo useradd -m -d /datadrive/home/$1 $1 -p $PASSWORD
sudo adduser $1 conda
sudo su -c "bash create_users/conda_setup.sh" $1
echo "job done!"