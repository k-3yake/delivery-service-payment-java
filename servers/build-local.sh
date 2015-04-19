#!/bin/bash
boot2docker start
$(boot2docker shellinit)
docker build -f base/DockerFile -t k3yake/dspj-base ../
docker build -f base/app-dependencies/DockerFile -t k3yake/dspj-app-dependencies ../
docker build -f ci/DockerFile -t k3yake/dspj-ci ../
