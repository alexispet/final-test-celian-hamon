#!/bin/bash

cd ~/final-test-celian-hamon
sudo docker compose -f docker-compose.prod.yml down
sudo docker compose -f docker-compose.prod.yml up -d