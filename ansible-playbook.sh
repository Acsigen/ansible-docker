#!/bin/bash

docker compose run --rm -it ansible-docker ansible-playbook "$@"
