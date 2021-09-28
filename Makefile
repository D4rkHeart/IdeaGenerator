.PHONY: all stop build tag run test exec

all: stop build tag run test exec

build:
	docker build --force-rm --pull --tag d4rkheart/ideagenerator .

tag:
	docker tag d4rkheart/ideagenerator d4rkheart/ideagenerator:latest

stop:
	docker stop d4rkheart/ideagenerator || true

run: stop
	docker run -it --rm -p 1337:80 --name ig d4rkheart/ideagenerator 

test:
	firefox http://localhost:1337	&

exec:
	docker exec -it d4rkheart/ideagenerator:latest bash

Kill: 
	docker kill $(docker ps -q)       