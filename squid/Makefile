.DEFAULT=all

all:
	docker build -t timwebster9/squid .

push:
	docker push timwebster9/squid

start:
	docker-compose down && docker-compose up -d && docker-compose logs -f