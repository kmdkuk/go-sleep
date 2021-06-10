.PHONY: image-build
image-build:
	docker build -t kmdkuk/node-sleep .

.PHONY: run
run:
	docker run -d --rm --name nodesleep kmdkuk/node-sleep

.PHONY: remove
remove:
	docker rm -f nodesleep

.PHONY: attach
attach:
	docker exec -it nodesleep bash
