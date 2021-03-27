FROM nimmis/ubuntu:18.04

ENV DEBIAN_FRONTEND noninteractive

# Install linux packages
RUN apt-get update
RUN apt-get -qq -y install git curl build-essential subversion perl wget unzip vim bc
RUN apt-get -y install sudo gdb
RUN adduser --disabled-password --gecos "" user \
	&& echo 'user:user' | chpasswd \
	&& adduser user sudo \
	&& echo 'user ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers

WORKDIR /root
COPY resources/vimrc .vimrc
RUN git clone https://github.com/casys-kaist/pintos-kaist
RUN echo "source ~/pintos-kaist/activate" >> ~/.bashrc 
RUN cd pintos-kaist/; sh install.sh
