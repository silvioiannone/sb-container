#!/bin/bash
eval $(docker-machine env)
docker exec -ti docker_workspace_1 bash