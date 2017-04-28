#!/bin/sh -eu

if [ $(whoami) != dev ]; then
  echo "it should be `dev` user." >&2
  exit 1
fi

docker run --rm -p 8080:8080 -p 50000:50000 \
       -v /home/dev/socialplus-jenkins/var:/var/jenkins_home \
       -d --restart always feedforce/socialplus-jenkins
