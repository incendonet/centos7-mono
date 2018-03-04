build:
	docker pull centos:7
	docker build -t centos7-mono:5.10.0.140 -f Dockerfile .
	docker tag centos7-mono:5.10.0.140 docker.io/incendonet/centos7-mono:latest
	docker tag centos7-mono:5.10.0.140 docker.io/incendonet/centos7-mono:5.8.0.108

