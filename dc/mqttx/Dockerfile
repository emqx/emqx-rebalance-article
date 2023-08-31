FROM ubuntu:latest

ENV VERSION=1.9.5

RUN apt-get update && apt-get install -y curl

ADD install.sh /tmp/install.sh
RUN chmod +x /tmp/install.sh && /tmp/install.sh && rm /tmp/install.sh

ENTRYPOINT ["/usr/bin/bash", "-c"]
