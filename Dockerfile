FROM ubuntu:bionic

# bootstrap dependencies
RUN apt-get update && apt-get install -y \
        apt-transport-https \
        ca-certificates \
        curl \
        lxc \
        iptables \
        python3-pip \
    && rm -rf /var/lib/apt/lists/*

# Usual official Docker install script + compose
RUN curl -sSL https://get.docker.com/ | sh; \
    pip3 install docker-compose

# Docker Wrapper Script
COPY ./wrapdocker /usr/local/bin/wrapdocker
RUN chmod +x /usr/local/bin/wrapdocker

# Metadata
ENTRYPOINT ["/usr/local/bin/wrapdocker"]
