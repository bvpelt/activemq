FROM fedora:23
MAINTAINER dockerpinguin <bart.vanpelt@gmail.com>

ENV ACTIVEMQ_VERSION 5.12.1
ENV ACTIVEMQ apache-activemq-$ACTIVEMQ_VERSION
ENV ACTIVEMQ_HOME /$ACTIVEMQ

RUN dnf -y update && \
	dnf clean all

RUN dnf -y install wget \
	tar \
	java-1.8.0-openjdk \
	javapackages-tools \
	procps-ng \
	cronie \
	net-tools \
	sysstat
RUN wget http://archive.apache.org/dist/activemq/$ACTIVEMQ_VERSION/$ACTIVEMQ-bin.tar.gz && \
	tar zxvf apache-activemq-5.12.1-bin.tar.gz && \
	rm $ACTIVEMQ-bin.tar.gz && \
	chmod 0755 apache-activemq-5.12.1/bin/activemq

ENV JAVA_HOME=/etc/alternatives/jre

WORKDIR $ACTIVEMQ_HOME

EXPOSE  8161 61616

COPY ./activemq.sh /

ENTRYPOINT ["/activemq.sh"]


