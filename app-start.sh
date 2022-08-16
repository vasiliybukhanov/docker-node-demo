#!/bin/bash
# docker compose -f network-compose.yaml \
docker network create \
  --driver=bridge \
  --subnet=172.16.238.0/24 \
  nginx-network
docker compose -f compose-app-balancer.yaml -p demo1 up -d
docker compose -f compose-app-balancer.yaml -p demo2 up -d
docker compose -f nginx/nginx-compose.yaml up -d
