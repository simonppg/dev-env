# Get basis image
FROM ubuntu:17.04

# Add maintainer
MAINTAINER "simonppg@gmail.com"

# Install package
RUN apt-get update -y
RUN apt-get -y install vim git curl

# Setup home environment
RUN useradd -ms /bin/bash user
USER user
WORKDIR /home/user
