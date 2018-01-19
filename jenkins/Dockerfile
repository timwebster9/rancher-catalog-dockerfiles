FROM jenkins/jenkins:latest

RUN install-plugins.sh  git \
                        cloudbees-folder \
                        build-timeout \
                        workflow-aggregator \
                        github-branch-source \
                        pipeline-github-lib \
                        pipeline-stage-view \
                        timestamper \
                        credentials-binding

#COPY jenkins-log-fowarder-plugin.hpi /var/jenkins_home/plugins/

RUN echo 2.0 > /usr/share/jenkins/ref/jenkins.install.UpgradeWizard.state
