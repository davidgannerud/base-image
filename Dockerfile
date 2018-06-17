FROM ubuntu:16.04

RUN apt-get update
RUN apt-get install -y gosu
RUN apt-get install -y sed
RUN apt-get install -y curl
RUN apt-get install -y bzip2
RUN apt-get install -y make
RUN apt-get install -y lib32z1
RUN apt-get install -y build-essential
RUN apt-get install -y wget
RUN apt-get install -y cpio
RUN apt-get install -y bc
RUN apt-get install -y unzip
RUN apt-get install -y rsync
RUN apt-get install -y mtd-utils
RUN apt-get install -y zip
RUN apt-get install -y git

ENV SSH_AUTH_SOCK=/tmp/ssh-agent

COPY entrypoint.sh /usr/local/bin/entrypoint.sh

RUN chmod 755 /usr/local/bin/entrypoint.sh

ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]

RUN mkdir -p /workspace
WORKDIR /workspace

CMD ["/bin/bash"]