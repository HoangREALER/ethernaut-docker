FROM ubuntu:latest

RUN apt-get -y update; apt-get -y install \
    curl \
    git

RUN curl -L https://foundry.paradigm.xyz | bash

ENV PATH="/root/.foundry/bin:${PATH}"
RUN foundryup

WORKDIR /contracts

COPY foundry.toml remappings.txt ./
COPY lib/ ./lib

COPY . .

ENV ANVIL_IP_ADDR=0.0.0.0
CMD [ "/bin/bash", "-c", "./entrypoint.sh" ]