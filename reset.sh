#!/bin/sh

#
# This script is intended to reset evertyhing betwen demo
#

# Refresh Repo
echo "Refresh repo"
git pull

# reset Changelog
echo "Reset changelog.xml"
cp templates/Changelog/changelog.xml  Changelog/

# Reset Resources
echo "Reset Resources directory"
git rm -rf --ignore-unmatch Resources/*/*.sql
git rm -rf --ignore-unmatch Resources/*/*.log

# Push everythihg back to the repo
echo "Push to GitHub"
git add .
datetime=`date`
git commit -m "Reset demo project on ${datetime}" -a
git push
