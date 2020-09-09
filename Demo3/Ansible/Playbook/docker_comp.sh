#!/bin/bash

docker pull docker/compose

echo alias docker-compose="'"'docker run --rm \
    -v /var/run/docker.sock:/var/run/docker.sock \
    -v "$PWD:$PWD" \
    -w="$PWD" \
    docker/compose'"'" >> /home/gitlab-runner/.bashrc


