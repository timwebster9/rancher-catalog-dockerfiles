FROM jenkinsci/jenkins

USER root

RUN apt-get update && apt-get install -y libevent-dev libcurl4-nss-dev libsasl2-modules && \
    wget http://repos.mesosphere.com/debian/pool/main/m/mesos/mesos_1.3.0-2.0.3.debian8_amd64.deb && \
    dpkg -i mesos_1.3.0-2.0.3.debian8_amd64.deb && \
    rm mesos_1.3.0-2.0.3.debian8_amd64.deb && \
    rm -rf /var/lib/apt/lists/*

USER jenkins