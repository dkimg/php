# PHP

[![Build Status](https://travis-ci.org/dkimg/php.svg?branch=master)](https://travis-ci.org/dkimg/php) ![Docker Pulls](https://img.shields.io/docker/pulls/dkimg/php.svg)

PHP images with basic extensions based on [php-fpm-alpine](https://hub.docker.com/_/php)

Stable releases

| php | image/tag | size |
|:-----:|:-----:|:-----:|
| `8.0.0` | dkimg/php | ![Docker Image Size (tag)](https://img.shields.io/docker/image-size/dkimg/php/8.0?label=image) |
| `8.0.0` | dkimg/php:7.4 | ![Docker Image Size (tag)](https://img.shields.io/docker/image-size/dkimg/php/8.0?label=image) |
| `7.4.13` | dkimg/php:7.4 | ![Docker Image Size (tag)](https://img.shields.io/docker/image-size/dkimg/php/7.4?label=image) |
| `7.3.25` | dkimg/php:7.3 | ![Docker Image Size (tag)](https://img.shields.io/docker/image-size/dkimg/php/7.3?label=image) |
| `7.2.34` | dkimg/php:7.2 | ![Docker Image Size (tag)](https://img.shields.io/docker/image-size/dkimg/php/7.2?label=image) |

Loaded extensions:
- gd
- soap
- xml
- simplexml
- tokenizer
- pdo_pgsql
- pdo_mysql
- pgsql
- mysqli
- bcmath
- intl
- mbstring

All images comes with:
- [composer](https://getcomposer.org/)
- port 9000 exposed
- memory_limit 256M
- upload_max_filesize 100M
- post_max_size 100M
