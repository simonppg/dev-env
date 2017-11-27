# Get basis image
FROM ubuntu:17.04

# Install package
RUN apt-get update -y
RUN apt-get -y install vim

# Setup home environment
RUN useradd -ms /bin/bash simonppg
USER simonppg
WORKDIR /home/simonppg
