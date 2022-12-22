build:
	docker compose build --no-cache

down:
	docker compose down -v --remove-orphans

setup:
	cp src/.env.example src/.env
	docker compose run --rm app composer install
	docker compose run --rm app php artisan key:generate
