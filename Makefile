build:
	docker pull centos:7
	docker build -t centos7-mono:5.8.0.108 -f Dockerfile .
	docker tag centos7-mono:5.8.0.108 docker.io/incendonet/centos7-mono:latest
	docker tag centos7-mono:5.8.0.108 docker.io/incendonet/centos7-mono:5.8.0.108

