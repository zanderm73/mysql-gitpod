#!/bin/bash

# Creates a user record for the current Cloud9 user
# Gives a personalised greeting
# Upgrades pip
# Author: Matt Rudge

echo "Setting the greeting"
sed -i "s/USER_NAME/$GITPOD_GIT_USER_NAME/g" ${GITPOD_REPO_ROOT}/README.md
echo "Creating the ${C9_USER} user in MySQL"
mysql -e "CREATE USER '${C9_USER}'@'%' IDENTIFIED BY '';"
echo "Granting privileges"
mysql -e "GRANT ALL PRIVILEGES ON *.* TO '${C9_USER}'@'%' WITH GRANT OPTION;"
echo "Checking for pip upgrade"
pip3 install --upgrade pip
echo "Done"
rm $GITPOD_REPO_ROOT/.gitpod*
rm $GITPOD_REPO_ROOT/init_tasks.sh


mkdir -p /workspace/data 
#Storing MongoDB’s data inside /workspace ensures that it will get backed up 
#and restored properly when you stop and restart a workspace, or share a snapshot.
cd ..
mkdir -p playground
checkoutLocation: "playground"
workspaceLocation: "."
tasks:
  - command: >
      cd /workspace/playground 
      
      
 cd /workspace/playground 
