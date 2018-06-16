FROM ubuntu:16.04

RUN apt-get update && apt-get -y --no-install-recommends install \
    gosu

ENV SSH_AUTH_SOCK=/tmp/ssh-agent

COPY entrypoint.sh /usr/local/bin/entrypoint.sh

RUN chmod 755 /usr/local/bin/entrypoint.sh

ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]