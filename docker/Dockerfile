FROM xxxxxxxxxxxx.dkr.ecr.ap-northeast-2.amazonaws.com/devops-utils2:ut2204_1

RUN apt-get install -y python3.10 python3.10-dev python3.10-distutils
RUN update-alternatives --install /usr/bin/python python /usr/bin/python3.10 1
RUN update-alternatives --set python /usr/bin/python3.10
RUN curl -s https://bootstrap.pypa.io/get-pip.py -o get-pip.py && \
   python get-pip.py --force-reinstall && \
   rm get-pip.py

RUN mkdir -p /etc/apt/keyrings
RUN curl -fsSL https://deb.nodesource.com/gpgkey/nodesource-repo.gpg.key | gpg --dearmor -o /etc/apt/keyrings/nodesource.gpg
RUN echo "deb [signed-by=/etc/apt/keyrings/nodesource.gpg] https://deb.nodesource.com/node_18.x nodistro main" | tee /etc/apt/sources.list.d/nodesource.list

RUN apt-get -y update
RUN apt-get -y install nodejs pkg-config libssl-dev cython3 make g++ dpkg-dev gettext locales python3.10 python3.10-dev python3.10-distutils
RUN locale-gen en_US.UTF-8

USER vagrant

WORKDIR /home/vagrant
COPY . /home/vagrant
COPY .env /home/vagrant

RUN mkdir -p /home/vagrant/.aws
RUN mkdir -p /home/vagrant/.kube
COPY config /home/vagrant/.aws/config
COPY credentials /home/vagrant/.aws/credentials
COPY kubeconfig_eks-main* /home/vagrant/.kube/

COPY requirements.txt /home/vagrant
RUN pip3 install -r /home/vagrant/requirements.txt
#RUN pip3 install --upgrade awscli

ENV NODE_PATH=/home/vagrant/node_modules

RUN sudo npm install -g @vue/cli \
    && npm i \
    && npm install bootstrap bootstrap-vue

RUN curl -sL https://sentry.io/get-cli/ | bash

ENV SENTRY_DSN=sentry_dsn
ENV SENTRY_AUTH_TOKEN=sentry_auth_token
ENV SENTRY_ORG=argear
ENV SENTRY_PROJECT=tz-devops-admin
ENV SENTRY_LOG_LEVEL=sentry_log_level
ENV SENTRY_ENVIRONMENT=sentry_environment
ENV SENTRY_RELEASE=sentry_release

RUN npm run build

EXPOSE 8000

CMD [ "python", "app/server.py" ]
#CMD ["sh", "-c", "while true; do echo $(date -u) >> out.txt; sleep 5; done"]

