
build:
	docker build -t centos7-mono:5.2.0.224 -f Dockerfile .
	docker tag centos7-mono:5.2.0.224 docker.io/bryanayers/centos7-mono:latest
	docker tag centos7-mono:5.2.0.224 docker.io/bryanayers/centos7-mono:5.2.0.224
