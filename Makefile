.PHONY: build test push save

PHP=7.4

build:
	@docker build -t dkimg/php:$(PHP) ./$(PHP)

test:
	@docker run --rm dkimg/php:$(PHP) php -v
	@docker run --rm quay.io/dkimg/php:$(PHP) php -v

push:
	@echo "$(DOCKER_PASSWORD)" | docker login -u "$(DOCKER_USERNAME)" --password-stdin
	@echo "$(QUAY_PASSWORD)" | docker login quay.io -u "$(QUAY_USERNAME)" --password-stdin
	@docker push dkimg/php:$(PHP)
	@docker push quay.io/dkimg/php:$(PHP)

save:
	@docker save dkimg/php:$(PHP) | gzip > dkimg_php$(PHP).tar.gz