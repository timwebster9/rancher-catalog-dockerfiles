FROM centos:7

RUN yum install -y epel-release \
  && yum install -y yum-utils device-mapper-persistent-data \
     lvm2 git java-1.8.0-openjdk-headless clamav clamav-update \
     which bind-utils wget rsync \
  && yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo \
  && yum install -y docker-ce \
  && yum clean all

# ClamAV Unofficial Signatures
RUN wget https://github.com/extremeshok/clamav-unofficial-sigs/archive/5.6.2.tar.gz -P /tmp \
  && tar -xvf /tmp/5.6.2.tar.gz -C /tmp \
  && cp /tmp/clamav-unofficial-sigs-5.6.2/clamav-unofficial-sigs.sh /usr/local/sbin/ \
  && chmod 755 /usr/local/sbin/clamav-unofficial-sigs.sh \
  && mkdir /etc/clamav-unofficial-sigs \
  && cp /tmp/clamav-unofficial-sigs-5.6.2/config/* /etc/clamav-unofficial-sigs/ \
  && mv /etc/clamav-unofficial-sigs/os.centos7.conf /etc/clamav-unofficial-sigs/os.conf \
  && rm -rf /tmp/*

COPY user.conf /etc/clamav-unofficial-sigs/

RUN /usr/local/sbin/clamav-unofficial-sigs.sh
