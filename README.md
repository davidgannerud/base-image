# Docker base image
Base image for building buildroot projects.

## How to build
    docker build . -t base-image

## How to run
Before you run the image, add your ssh key to the ssh agent

    ssh-add ~/.ssh/id_rsa

Run the image with this command

    docker run --rm -it -e LOCAL_USER_ID=`id -u $USER` -v ${SSH_AUTH_SOCK}:/tmp/ssh-agent -v `pwd`:/workspace base-image
