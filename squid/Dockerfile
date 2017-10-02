FROM centos

RUN yum -y install epel-release \
 && yum -y update \
 && yum install -y squid \
 && yum clean all \
 && mkdir -p /data


COPY cmd.sh /cmd.sh
RUN  chmod +x /cmd.sh

COPY squid.conf whitelist.txt /data/

CMD ["./cmd.sh"]