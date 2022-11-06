init:
#	cp .example-docker.env .env
	docker-compose build
	docker-compose up -d db
	docker-compose run --rm sab-backend rails db:create
	mkdir -p tmp/pids
	docker-compose up -d

build:
	docker-compose build

up:
	docker-compose up -d

ps:
	docker-compose ps

down:
	docker-compose down

bash:
	docker-compose run --rm sab-backend bash