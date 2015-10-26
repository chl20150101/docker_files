# Creates a base ubuntu image with serf and dnsmasq
FROM daocloud.io/library/ubuntu:15.04

MAINTAINER chl <why_641@hotmail.com>


# Portal_Client_Chap files
RUN mkdir -p /data/Portal_Client_Chap 
ADD Portal_Client_Chap/* /data/Portal_Client_Chap/
RUN chmod +x /data/Portal_Client_Chap/*.sh

# configure serf

WORKDIR /data/Portal_Client_Chap

# Expose the default port
EXPOSE 9090

# Set default container command
#ENTRYPOINT sh /data/Portal_Client_Chap/start.sh
#ENTRYPOINT sh ./start.sh
#RUN sh /data/Portal_Client_Chap/start.sh

CMD ["./start.sh"]
