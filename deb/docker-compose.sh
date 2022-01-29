#!/bin/bash

# install docker-compose
[[ ! -n `command -v docker-compose` ]] && \
 sudo curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose && \
 sudo chmod +x /usr/local/bin/docker-compose \
  || echo "Docker-compose already installed, skipping..."
