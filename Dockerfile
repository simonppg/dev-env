# Get basis image
FROM ubuntu:17.04

# Install package
RUN apt-get update -y
RUN apt-get -y install vim git curl

# Setup home environment
RUN useradd -ms /bin/bash simonppg
USER simonppg
WORKDIR /home/simonppg
RUN git clone https://github.com/simonppg/vim.git ~/.vim
RUN ln -s ~/.vim/vimrc ~/.vimrc
RUN curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
