run:
	cargo run

up:
	docker compose --file=docker-compose.yml --env-file=.env up -d

down:
	docker compose --file=docker-compose.yml down

deploy-up:
	docker image pull nekofluff/rasuti
	docker compose --file=docker-compose.deploy.yml --env-file=.env up -d

deploy-down:
	docker compose --file=docker-compose.deploy.yml down