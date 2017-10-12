FROM jenkins/jenkins:2.82

USER root

RUN apt-get update && apt-get install -y sudo nano systemd libevent-dev libcurl4-nss-dev libsasl2-modules net-tools dnsutils lsof && \
    wget http://repos.mesosphere.com/debian/pool/main/m/mesos/mesos_1.3.0-2.0.3.debian8_amd64.deb && \
    dpkg -i mesos_1.3.0-2.0.3.debian8_amd64.deb && \
    rm mesos_1.3.0-2.0.3.debian8_amd64.deb && \
    rm -rf /var/lib/apt/lists/*

RUN echo "root:root" | chpasswd && passwd -u root

USER jenkins