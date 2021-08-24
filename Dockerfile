FROM jenkins/jenkins:lts-alpine
LABEL maintainer "socialplus_admin@feedforce.jp"

ENV JENKINS_OPTS --sessionTimeout=1440

USER root
RUN apk add --no-cache \
        gcc \
        libc-dev \
        linux-headers \
        make \
        readline-dev \
        zlib-dev \
        mariadb-dev \
        python3-dev \
        py3-pip \
        rsync \
        shared-mime-info && \
    pip install --upgrade pip && \
    pip install awscli
USER jenkins
