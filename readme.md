# PHP

[![Build Status](https://travis-ci.org/dkimg/php.svg?branch=master)](https://travis-ci.org/dkimg/php) ![Docker Pulls](https://img.shields.io/docker/pulls/dkimg/php.svg)

PHP (stable) images with basic extensions based on [php-fpm-alpine](https://hub.docker.com/_/php)

Testing releases

| php | image/tag | size |
|:-----:|:-----:|:-----:|
| `8.0.0rc1-alpine` | dkimg/php:8.0 | ![Docker Image Size (tag)](https://img.shields.io/docker/image-size/dkimg/php/8.0?label=image) |

Stable releases

| php | image/tag | size |
|:-----:|:-----:|:-----:|
| `7.4.11` | dkimg/php:7.4 | ![Docker Image Size (tag)](https://img.shields.io/docker/image-size/dkimg/php/7.4?label=image) |
| `7.3.23` | dkimg/php:7.3 | ![Docker Image Size (tag)](https://img.shields.io/docker/image-size/dkimg/php/7.3?label=image) |
| `7.2.33` | dkimg/php:7.2 | ![Docker Image Size (tag)](https://img.shields.io/docker/image-size/dkimg/php/7.2?label=image) |

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

All images comes with:
- [composer](https://getcomposer.org/)
- port 9000 exposed
- memory_limit 256M
- upload_max_filesize 100M
- post_max_size 100M
