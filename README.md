# **Ganesha userspace nfs server.**

1\. modify 'docker-compose.yml' to bind given local directory that you want to share via NFS

2\. modify ganesha.conf:

Export_ID [must be unique number for each export], Path and Pseudo [path].

3\. docker build . -t nfs && docker-compose up -d

4\. test by mounting NFS share:

docker_node_IP:/shared/path /mnt/path

check available exports on the server:

showmount -e docker_node_IP
