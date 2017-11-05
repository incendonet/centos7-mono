build:
	docker build -t centos7-mono:5.4.0.201 -f Dockerfile .
	docker tag centos7-mono:5.4.0.201 docker.io/incendonet/centos7-mono:latest
	docker tag centos7-mono:5.4.0.201 docker.io/incendonet/centos7-mono:5.4.0.201

