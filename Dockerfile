FROM debian:stable-slim

MAINTAINER "Marc Smith" <marc_smith@gmx.com>

ENV PATH /usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/root
RUN apt-get update
RUN apt-get install -y rpcbind nfs-ganesha nfs-ganesha-vfs
ADD start.sh /start.sh
RUN chmod +x /start.sh
CMD ["/start.sh"]
EXPOSE 2049
