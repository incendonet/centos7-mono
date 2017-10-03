build:
	docker build -t centos7-mono:5.2.0.224 -f Dockerfile .
	docker tag centos7-mono:5.2.0.224 docker.io/incendonet/centos7-mono:latest
	docker tag centos7-mono:5.2.0.224 docker.io/incendonet/centos7-mono:5.2.0.224

