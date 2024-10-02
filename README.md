# Ethernaut Docker Containerized

[![Test Status](https://github.com/HoangREALER/ethernaut-docker/actions/workflows/test.yml/badge.svg)](https://github.com/HoangREALER/ethernaut-docker/actions)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://github.com/HoangREALER/ethernaut-docker/blob/main/LICENSE)
[![Docker](https://img.shields.io/badge/docker-%230db7ed.svg?style=for-the-badge&logo=docker&logoColor=white&style=for-the-badge)](https://docs.docker.com/)




## Install
```bash
git clone https://github.com/HoangREALER/ethernaut-docker.git
```

## Build and Deploy
**Requirements:** 
- Docker and Docker Compose on your computer. Install [here](https://docs.docker.com/get-started/get-docker/).
- Metamask on your favourite browser.

### Step 1
Build an deploy Docker containers.
```bash
docker compose up -d
```

### Step 2
You need to setup your Metamask to work on localhost by setting up a network and import private key(s).

The RPC_URL should be `http://localhost:8545` or whatever you config.

You can check the logs of the container to retrieve the private key(s) output from the ganache-cli. You can either check it with Docker Desktop or by using CLI:
```bash
docker logs $(docker ps --filter "name=ethernaut-ethernaut_contract" | awk '{if(NR>1) print $1}')
```

### Step 3
The React web client should be available on `http://127.0.0.1:3000`.

### Step 4
Take a coffee and enjoy hacking.