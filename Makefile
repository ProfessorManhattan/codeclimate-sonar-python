.PHONY: image test

IMAGE_NAME ?= codeclimate/codeclimate-sonar-python

SLIM_IMAGE_NAME ?= codeclimate/codeclimate-sonar-python:slim

image:
	docker build --rm -t $(IMAGE_NAME) .

slim: image
	docker-slim build --tag $(SLIM_IMAGE_NAME) --http-probe=false --exec '/usr/src/app/build/codeclimate-sonar /code /usr/src/app/fixtures/app/config.json' --mount "$$PWD/fixtures/app:/code" --workdir '/code' --preserve-path-file 'paths.txt' $(IMAGE_NAME) && prettier --write slim.report.json 

test: slim
	container-structure-test test --image $(IMAGE_NAME) --config tests/container-test-config.yaml && container-structure-test test --image $(SLIM_IMAGE_NAME) --config tests/container-test-config.yaml

gradle-test: image
	docker run --rm -ti -w /usr/src/app -u root $(IMAGE_NAME) gradle clean test
