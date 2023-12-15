FROM oven/bun:latest

RUN useradd -m devcontainer

RUN chsh -s /bin/bash devcontainer

WORKDIR /home/devcontainer

RUN apt-get update && \
    apt-get install -y git

USER devcontainer