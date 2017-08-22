############################################################
# Dockerfile to build maven
# Based on http://stackoverflow.com/questions/15630055/how-to-install-maven-3-on-ubuntu-15-10-15-04-14-10-14-04-lts-13-10-13-04-12-10-1
FROM [user.id]/[parent.repository][parent.tag]

###########################################################
# File Author / Maintainer
MAINTAINER [user.name] "[user.email]"
################## BEGIN INSTALLATION ######################
USER root
RUN /bin/bash -c "apt-get update && apt-get upgrade -y && apt-get clean && apt-get autoremove"
ENV DEBIAN_FRONTEND noninteractive

RUN apt-get -y install maven
ENV MAVEN_OPTS="-Xmx1g"

