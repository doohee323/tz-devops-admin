#!/usr/bin/env bash

set -x

GIT_BRANCH=$1
STAGING=$2

export GIT_BRANCH=$(echo ${GIT_BRANCH} | sed 's/\//-/g')
GIT_BRANCH=$(echo ${GIT_BRANCH} | cut -b1-21)

bash /var/lib/jenkins/vault.sh get devops-prod tz-devops-admin resources
tar xvfz resources.zip && rm -Rf resources.zip

cp -Rf resources/config config
cp -Rf resources/credentials credentials
cp -Rf resources/sl_topzone-k8s topzone-k8s
cp -Rf resources/auth.env auth.env

exit 0
