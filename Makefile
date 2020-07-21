.PHONY: build test deploy save

PHP=7.4

build:
	@docker build -t dkimg/php:$(PHP) ./$(PHP)

test:
	@docker run --rm dkimg/php:$(PHP) php -v

deploy:
	docker push dkimg/php:$(PHP)

save:
	@docker save dkimg/php:$(PHP) | gzip > dkimg_php$(PHP).tar.gz