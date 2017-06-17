.DEFAULT=all

all:
	docker build -t timw/squid .

start:
	docker-compose down && docker-compose up -d && docker-compose logs -f