build:
	go build -o go-sleep main.go

.PHONY: image-build
image-build:
	docker build -t kmdkuk/go-sleep .

.PHONY: run
run:
	docker run -d --name gosleep kmdkuk/go-sleep

.PHONY: remove
remove:
	docker rm -f gosleep

.PHONY: attach
attach:
	docker exec -it gosleep bash
