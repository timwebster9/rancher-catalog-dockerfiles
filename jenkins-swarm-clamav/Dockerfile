FROM centos:7

RUN yum install -y epel-release \
  && yum install -y yum-utils device-mapper-persistent-data lvm2 git java-1.8.0-openjdk-headless clamav clamav-update \
  && yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo \
  && yum install -y docker-ce

ENV SWARM_CLIENT_VERSION 3.5

COPY run.sh /run.sh
ADD http://repo.jenkins-ci.org/releases/org/jenkins-ci/plugins/swarm-client/${SWARM_CLIENT_VERSION}/swarm-client-${SWARM_CLIENT_VERSION}.jar /usr/share/jenkins/swarm-client-${SWARM_CLIENT_VERSION}.jar
RUN chmod 644 /usr/share/jenkins/swarm-client-${SWARM_CLIENT_VERSION}.jar && chmod +x /run.sh

WORKDIR /workspace

ENTRYPOINT ["/run.sh"]