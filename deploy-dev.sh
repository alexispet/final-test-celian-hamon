#!/bin/bash

cd ~/final-test-celian-hamon
sudo docker compose -f docker-compose.dev.yml down
sudo docker compose -f docker-compose.dev.yml up -d