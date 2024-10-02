FROM ubuntu:latest

RUN apt-get -y update; apt-get -y install curl git

ARG NODE_VERSION='16.20.1'
ARG NVM_VERSION='0.40.1'

# Install NodeJS and NPM
RUN curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v${NVM_VERSION}/install.sh | bash

RUN export NVM_DIR="$HOME/.nvm" \
    && [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" \
    && nvm install ${NODE_VERSION} \
    && nvm use ${NODE_VERSION}

# Set environment variables
ARG NVM_DIR="/root/.nvm"
ENV PATH $NVM_DIR/versions/node/v$NODE_VERSION/bin:$PATH

# Install Yarn
RUN npm install -g yarn

# Set the working directory
WORKDIR /app
COPY package.json ./
COPY deps/ ./deps
RUN yarn add file:./deps/hljs --ignore-workspace-root-check --ignore-engines
COPY ./ ./

# Prevent browsers from opening
ENV BROWSER=none
CMD [ "/bin/bash", "-c" , "./entrypoint.sh" ]