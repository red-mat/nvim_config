FROM ubuntu

WORKDIR /root

RUN apt-get update; apt-get upgrade -y
RUN apt-get install sudo
RUN apt-get install -y git

RUN git clone https://www.github.com/Red-Mat/nvim_config.git
RUN git checkout deploy

CMD bash