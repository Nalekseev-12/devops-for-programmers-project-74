env:
	cp -n ./app/.env.example .env
dependencies:
	docker-compose run --rm app npm ci
build:
	docker-compose -f docker-compose.yml build app
ci:
	docker-compose -f docker-compose.yml up --abort-on-container-exit --exit-code-from app
start:
	docker-compose up
push:
	docker-compose -f docker-compose.yml push app