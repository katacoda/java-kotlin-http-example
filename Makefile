IMAGE=kotlin-http-example
TAG=latest

.PHONY: build dev run
default: build

build:
	docker build -t $(IMAGE):$(TAG) .

run:
	docker run -p 3000:3000 $(IMAGE):$(TAG)

dev:
	docker run -v $(shell pwd):/src -p 3000:3000 -it ocelotuproar/alpine-kotlin:latest ash
