# Base OS
FROM centos:centos7
MAINTAINER bryanayers+dockerfile@gmail.com

# Env setup
ENV HOME /root
ENV MONO_MAJOR 4.2
ENV MONO_MINOR 3.4-0.xamarin.1
WORKDIR ~/

# Get updates and build deps
RUN \
	yum -y update && \
	yum install -y wget yum-utils

# Mono install
#   Notes:
#     mono-data-postgresql unfortunately has been obsoleted by mono-complete, which pulls in 39 MB of dependencies (including mono-data-oracle and devel packages)
RUN \
	rpm --import "http://keyserver.ubuntu.com/pks/lookup?op=get&search=0x3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF" && \
	yum-config-manager --add-repo http://download.mono-project.com/repo/centos/ && \
	yum -y install \
		posgresql \
		libgdiplus0-3.12-1 \
		mono-core-$MONO_MAJOR.$MONO_MINOR \
		mono-data-$MONO_MAJOR.$MONO_MINOR \
		mono-data-postgresql-3.12.1-0 \
		mono-data-sqlite-$MONO_MAJOR.$MONO_MINOR \
		mono-nunit-$MONO_MAJOR.$MONO_MINOR \
		mono-web-$MONO_MAJOR.$MONO_MINOR
