build:
	docker build -t centos7-mono:5.4.1.6 -f Dockerfile .
	docker tag centos7-mono:5.4.1.6 docker.io/incendonet/centos7-mono:latest
	docker tag centos7-mono:5.4.1.6 docker.io/incendonet/centos7-mono:5.4.1.6

