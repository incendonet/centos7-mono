# Base OS
FROM centos:7
MAINTAINER info@incendonet.com

# Env setup
ENV HOME /root
ENV MONO_MAJOR 5.2
ENV MONO_MINOR 0.224-0.xamarin.1.epel7
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
		postgresql \
		libgdiplus0-4.2-0.xamarin.2.epel7 \
		mono-core-$MONO_MAJOR.$MONO_MINOR \
		mono-data-$MONO_MAJOR.$MONO_MINOR \
		mono-data-sqlite-$MONO_MAJOR.$MONO_MINOR \
		mono-nunit-$MONO_MAJOR.$MONO_MINOR \
		mono-web-$MONO_MAJOR.$MONO_MINOR
