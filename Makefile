env:
	cp -n ./app/.env.example .env
build:
	docker-compose -f docker-compose.yml build app
ci:
	docker-compose --env-file ./config/.env.dev -f docker-compose.yml up --abort-on-container-exit --exit-code-from app
start:
	docker-compose up
push:
	docker-compose -f docker-compose.yml push app