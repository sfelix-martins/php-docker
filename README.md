# Php Docker 

Docker config for PHP application 

## Requirements

- Docker
- Docker Compose

## Containers

- PHP 7.4.1
- MySQL 5.7.22
- Redis
- Nginx

## Configuration

Clone repository files in a new folder inside your project:

```shell script
git clone git@github.com:sfelix-martins/php-docker.git
```

Copy the content of the folder `src` to your project root folder:

```shell script
cp -a php-docker/src/ .
```

Change the services name on `docker-compose.yml` from `phpapp` to your application name.

**WARNING** If you changed the services names don't forget change the `fastcgi_pass` with your new service name.

The default port defined is `8080`. 

You can change it on `nginx` service in `docker-compose.yml` ports mapping. 

## Usage

Up your application docker environment: 

```shell script
docker-compose up -d
```

Your application should be available on `http://localhost:8080`.

Remembering that `.docker/nginx/nginx.conf` contains the web server configs pointing the site to `/var/www/public`.

Feels free to change it according to your application entry point.
