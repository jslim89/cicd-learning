PROJECT_NAME=do-blog

ifeq ($(ENV), )
	PROJECT_ENV=dev
else
	PROJECT_ENV=${ENV}
endif

up:
	mkdir -p tmp
	docker-compose -p ${PROJECT_NAME} -f docker/docker-compose.base.yml -f docker/${PROJECT_ENV}.yml up -d --force-recreate --build
down:
	docker-compose -p ${PROJECT_NAME} -f docker/docker-compose.base.yml -f docker/${PROJECT_ENV}.yml down
composer:
	docker exec do-php-fpm bash -c "composer install"
