FROM docker:17.09.0-git

ENV LANG C.UTF-8

# add a simple script that can auto-detect the appropriate JAVA_HOME value
# based on whether the JDK or only the JRE is installed
RUN { \
		echo '#!/bin/sh'; \
		echo 'set -e'; \
		echo; \
		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; \
	} > /usr/local/bin/docker-java-home \
	&& chmod +x /usr/local/bin/docker-java-home
ENV JAVA_HOME /usr/lib/jvm/java-1.8-openjdk/jre
ENV PATH $PATH:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin

ENV JAVA_VERSION 8u131
ENV JAVA_ALPINE_VERSION 8.131.11-r2

RUN set -x \
	&& apk add --no-cache \
		openjdk8-jre="$JAVA_ALPINE_VERSION" \
	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]

RUN apk add --no-cache curl tar bash

ARG MAVEN_VERSION=3.5.2
ARG USER_HOME_DIR="/root"
ARG BASE_URL=http://mirrors.ukfast.co.uk/sites/ftp.apache.org/maven/maven-3/${MAVEN_VERSION}/binaries

RUN mkdir -p /usr/share/maven /usr/share/maven/ref \
  && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-$MAVEN_VERSION-bin.tar.gz \
  && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1 \
  && rm -f /tmp/apache-maven.tar.gz \
  && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn

ENV MAVEN_HOME /usr/share/maven

#ENV REDIS_VERSION 4.0.2
#ENV REDIS_DOWNLOAD_URL http://download.redis.io/releases/redis-${REDIS_VERSION}.tar.gz

#RUN apk update && apk upgrade \
#    && apk add --update --no-cache --virtual build-deps gcc make linux-headers musl-dev tar \
#    && wget -O redis.tar.gz "$REDIS_DOWNLOAD_URL" \
#    && mkdir -p /usr/src/redis \
#    && tar -xzf redis.tar.gz -C /usr/src/redis --strip-components=1 \
#    && rm redis.tar.gz \
#    && make -C /usr/src/redis install redis-cli /usr/bin \
#    && rm -r /usr/src/redis \
#    && apk del build-deps \
#    && rm -rf /var/cache/apk/*

COPY notary.rancher.zone.crt /usr/local/share/ca-certificates/
RUN update-ca-certificates