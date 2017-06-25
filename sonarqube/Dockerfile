FROM sonarqube

RUN apt update && apt install -y nano vim && rm -rf /var/lib/apt/lists/*

ADD https://sonarsource.bintray.com/Distribution/sonar-ldap-plugin/sonar-ldap-plugin-2.1.0.507.jar /opt/sonarqube/extensions/plugins/
COPY sonar.properties /opt/sonarqube/conf/
