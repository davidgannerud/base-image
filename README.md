# Docker base image
Base image for building buildroot projects.

## Get it from dockerhub

    docker pull combitech/base-image

## How to build it yourself
    docker build . -t base-image

## How to run
Before you run the image, add your ssh key to the ssh agent

    ssh-add ~/.ssh/id_rsa

Run the image with this command

    docker run --rm -it -e LOCAL_USER_ID=`id -u $USER` -v ${SSH_AUTH_SOCK}:/tmp/ssh-agent -v `pwd`:/workspace base-image

To use local files mirror, add path to files as a volume to the docker run command.
