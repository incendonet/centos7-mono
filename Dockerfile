# Base OS
FROM centos:centos7
MAINTAINER bryanayers+dockerfile@gmail.com

# Env setup
ENV HOME /root
WORKDIR ~/

# Get updates and build deps
RUN \
	yum -y update && \
	yum install -y wget yum-utils

# Mono install
RUN \
	rpm --import "http://keyserver.ubuntu.com/pks/lookup?op=get&search=0x3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF" && \
	yum-config-manager --add-repo http://download.mono-project.com/repo/centos/ && \
	yum -y install libgdiplus0 mono-core mono-data mono-data-postgresql mono-data-sqlite mono-nunit mono-web
