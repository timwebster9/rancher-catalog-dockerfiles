.DEFAULT=build

build:
	docker build --pull -t timw/jenkins-server .

up:
	docker-compose up -d && docker-compose logs -f

down:
	docker-compose down