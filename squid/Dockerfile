FROM centos

RUN yum install http://ngtech.co.il/repo/centos/7/squid-repo-1-1.el7.centos.noarch.rpm -y \
 && yum install -y squid \
 && yum clean all \
 && mkdir -p /data


COPY cmd.sh /cmd.sh
RUN  chmod +x /cmd.sh

COPY squid.conf whitelist.txt /data/

CMD ["./cmd.sh"]