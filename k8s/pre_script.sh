#!/usr/bin/env bash

#set -x

GIT_BRANCH=$1
STAGING=$2

export GIT_BRANCH=$(echo ${GIT_BRANCH} | sed 's/\//-/g')
GIT_BRANCH=$(echo ${GIT_BRANCH} | cut -b1-21)

function prop {
  if [[ "${3}" == "" ]]; then
    grep "${2}" "/root/.aws/${1}" | head -n 1 | cut -d '=' -f2 | sed 's/ //g'
  else
    grep "${3}" "/root/.aws/${1}" -A 10 | grep "${2}" | head -n 1 | tail -n 1 | cut -d '=' -f2 | sed 's/ //g'
  fi
}

DEVOPS_ADMIN_PASSWORD=$(prop 'project-t' 'admin_password')
CLUSTER=$(prop 'project-t' 'project')

bash /vault.sh fget devops-dev topzone-k8s > devops
bash /vault.sh fget devops-dev topzone-k8s.pub > devops.pub
bash /vault.sh fget devops-dev ssh_config > ssh_config
bash /vault.sh fget devops-dev auth.env > auth.env
bash /vault.sh fget devops-dev config > config
bash /vault.sh fget devops-dev credentials > credentials
bash /vault.sh fget devops-dev kubeconfig_topzone-k8s > kubeconfig_topzone-k8s

SENTRY_LOG_LEVEL=debug
SENTRY_ENVIRONMENT=${GIT_BRANCH}
if [ "${STAGING}" == "prod" ]; then
  SENTRY_LOG_LEVEL=info
fi
SENTRY_RELEASE=${STAGING}

function prop2 {
  grep "${2}" "${1}" | head -n 1 | cut -d '=' -f2 | sed 's/ //g'
}

SENTRY_DSN=$(prop2 '.env' 'SENTRY_DSN')
SENTRY_AUTH_TOKEN=$(prop2 '.env' 'SENTRY_AUTH_TOKEN')

sed -i -e "s|sentry_dsn|${SENTRY_DSN}|" docker/Dockerfile
sed -i -e "s|sentry_auth_token|${SENTRY_AUTH_TOKEN}|" docker/Dockerfile
sed -i -e "s|sentry_log_level|${SENTRY_LOG_LEVEL}|" docker/Dockerfile
sed -i -e "s|sentry_environment|${SENTRY_ENVIRONMENT}|" docker/Dockerfile
sed -i -e "s|sentry_release|${SENTRY_RELEASE}|" docker/Dockerfile

cat docker/Dockerfile

sed -i -e "s|process.env.SENTRY_DSN|${SENTRY_DSN}|" src/main.js
sed -i -e "s|process.env.SENTRY_ENVIRONMENT|${SENTRY_ENVIRONMENT}|" src/main.js
sed -i -e "s|process.env.SENTRY_RELEASE|${SENTRY_RELEASE}|" src/main.js

exit 0
