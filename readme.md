# PHP

[![Build Status](https://travis-ci.org/dkimg/php.svg?branch=master)](https://travis-ci.org/dkimg/php) ![Docker Pulls](https://img.shields.io/docker/pulls/dkimg/php.svg)

PHP (stable) images with basic extensions based on [php-fpm-alpine](https://hub.docker.com/_/php)

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
- mbstring

All images comes with
- [composer](https://getcomposer.org/)
- port 9000 exposed
- memory_limit 256M
- upload_max_filesize 100M
- post_max_size 100M

| php | image/tag | size |
|:-----:|:-----:|:-----:|
| `7.4.8` | dkimg/php:7.4 | ![Docker Image Size (tag)](https://img.shields.io/docker/image-size/dkimg/php/7.4?label=image) |
| `7.3.20` | dkimg/php:7.3 | ![Docker Image Size (tag)](https://img.shields.io/docker/image-size/dkimg/php/7.3?label=image) |
| `7.2.32` | dkimg/php:7.2 | ![Docker Image Size (tag)](https://img.shields.io/docker/image-size/dkimg/php/7.2?label=image) |