FROM ubuntu

WORKDIR /root/nvim_config

RUN apt-get update; apt-get upgrade -y
RUN apt-get install sudo

CMD ["./nvim_config.sh","--install"]

