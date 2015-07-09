FROM ubuntu:14.04
MAINTAINER George Papadakis <gpapadis@di.uoa.gr>

RUN apt-get update && apt-get install -y \
	default-jdk \
	wget \
	&& apt-get clean && rm -rf /var/lib/apt/lists/*

RUN mkdir geotriples && \
	cd geotriples/ && \
	wget http://sourceforge.net/projects/geotriples/files/geotriples_1.0.deb && \
	dpkg -i geotriples_1.0.deb
