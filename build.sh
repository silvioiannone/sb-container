#!/bin/bash
eval $(docker-machine env)
docker-compose build