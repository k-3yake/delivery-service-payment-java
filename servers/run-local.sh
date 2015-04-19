#!/bin/sh
boot2docker start
$(boot2docker shellinit)

export PROJECT_HOME=/Users/katsuki/develop/workspace/delivery-service-payment-java

docker run -d -p 8080:8080 -p 10023:22 -v $PROJECT_HOME/servers/ci/jenkins_home/:/home/jenkins/jenkins_home -v $PROJECT_HOME:/home/repository k3yake/dspj-ci
