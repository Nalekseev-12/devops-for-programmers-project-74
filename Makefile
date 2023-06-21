build:
	docker-compose run --rm app npm ci
	docker-compose build
ci:
	docker-compose -f docker-compose.yml up --abort-on-container-exit --exit-code-from app
start:
	docker-compose up
push:
	docker-compose push app