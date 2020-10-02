#!/bin/bash
# GitHub API Token
echo GH_API_TOKEN=''
# GitHub User Name
echo GH_USER=''
# Variable to store first argument to setup-repo, the repo name. Will be used as GH repo name, too.
echo NEW_REPO_NAME=$1
echo NEW_REPO_NAME=`basename $PWD`
# Store current working directory.
echo CURRENT_DIR=$PWD
# Project directory can be passed as second argument to setup-repo, or will default to current working directory.
echo PROJECT_DIR=${2:-$CURRENT_DIR}
# GitHub repos Create API call
echo curl -H "Authorization: token $GH_API_TOKEN" https://api.github.com/user/repos -d '{"name": "'"${NEW_REPO_NAME}"'"}'
echo curl -H "Authorization: token \$(<../t0ken)" https://api.github.com/user/repos -d '{"name": "'"${NEW_REPO_NAME}"'"}'
echo git init $PROJECT_DIR
# Initialize Git in project directory, and add the GH repo remote.
echo git -C $PROJECT_DIR remote add origin git@github.com:$GH_USEr/$NEW_REPO_NAME.git
