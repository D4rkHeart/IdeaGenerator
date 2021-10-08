.PHONY: all stop build tag run test exec

all: stop build tag run test exec

build:
	docker build --force-rm --pull --tag d4rkheart/ideagenerator .

tag:
	docker tag d4rkheart/ideagenerator d4rkheart/ideagenerator:latest

stop:
	docker stop d4rkheart/ideagenerator || true

Topics.json: Topics.yml
	ruby yml2json.rb $< > $@

run:Topics.json
	docker run -d --rm -p 1337:80 --name ig d4rkheart/ideagenerator  

test:
	firefox http://localhost:1337	&

exec:
	docker exec -it d4rkheart/ideagenerator:latest bash

kill: 
	docker kill $$(docker ps -q)       

	Topics.json 
	docker-compose up - run the app 
	docker-compose ps - what running 
	docker-compose down - shut down 
	docker-compose exec [service name] {nameoftheshell} - (exec)

