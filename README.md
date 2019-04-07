# PHP FPM ALPINE

Docker image

## php-fpm-alpine

PHP FPM with mysqli and pdo base on Alpine

## Softwares & Versions

- Alpine 3.9
- PHP 7.3.1
- Git
- Composer

## Extra PHP modules installed

- mysqli
- pdo_mysql

## Building

1. `./bin/dockerlint`
2. `./bin/build docker build x.y.z [dev,prod]`

## Helper scripts

1. `./bin/dockerlint` : Checks the syntax of the Dockerfile file
2. `./bin/build` : for building images
3. `./bin/start` : for starting a container
4. `./bin/enter` : for entering a container
