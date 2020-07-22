.PHONY: build test push save

PHP=7.4

build:
	@docker build -t dkimg/php:$(PHP) ./$(PHP)

test:
	@docker run --rm dkimg/php:$(PHP) php -v

push:
	@echo "$(DOCKER_PASSWORD)" | docker login -u "$(DOCKER_USERNAME)" --password-stdin
	@docker push dkimg/php:$(PHP)

save:
	@docker save dkimg/php:$(PHP) | gzip > dkimg_php$(PHP).tar.gz