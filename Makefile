.PHONY: all stop build tag run test exec

all: stop build tag run test exec

build:
	docker build --force-rm --pull --tag ig .

tag:
	docker tag ig ig:latest

stop:
	docker stop ig || true

run: stop
	docker run --interactive --tty --rm --publish 1337:80 --name ig --detach ig

test:
	firefox http://localhost:1337	&

exec:
	docker exec -it ig bash
