up:
	docker-compose up -d
build:
	docker-compose build --no-cache --force-rm
create-project:
	@make build
	@make up
	docker container exec -it php-sakaecake-app-web composer create-project --prefer-dist --no-interaction cakephp/app:3.6.* ./app
