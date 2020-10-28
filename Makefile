.PHONY: run build login push latest test save

PHP=7.4

run: build login push

build:
	@docker build -t dkimg/php:$(PHP) ./$(PHP)

login:
	@echo "$(DOCKER_PASSWORD)" | docker login -u "$(DOCKER_USERNAME)" --password-stdin
	@echo "$(QUAY_PASSWORD)" | docker login quay.io -u "$(QUAY_USERNAME)" --password-stdin

push:
	@docker tag dkimg/php:$(PHP) quay.io/dkimg/php:$(PHP)
	@docker push dkimg/php:$(PHP)
	@docker push quay.io/dkimg/php:$(PHP)

latest:
	@docker pull dkimg/php:$(PHP)
	@docker tag dkimg/php:$(PHP) dkimg/php:latest
	@docker tag dkimg/php:$(PHP) quay.io/dkimg/php:latest
	@docker push dkimg/php:$(PHP)
	@docker push quay.io/dkimg/php:$(PHP)

test:
	@docker pull dkimg/php:$(PHP)
	@docker pull quay.io/dkimg/php:$(PHP)
	@docker run --rm dkimg/php:$(PHP) php -v
	@docker run --rm quay.io/dkimg/php:$(PHP) php -v

save:
	@docker save dkimg/php:$(PHP) | gzip > dkimg_php$(PHP).tar.gz