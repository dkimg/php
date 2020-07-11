.PHONY: build

PHP=7.4

build:
	@docker build -t dkimg/php:$(PHP) ./$(PHP)

save:
	@docker save dkimg/php:$(PHP) | gzip > dkimg_php$(PHP).tar.gz