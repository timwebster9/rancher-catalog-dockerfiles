.DEFAULT=all

all:
	docker build -t mars:5000/timw/squid .
	docker push mars:5000/timw/squid

start:
	docker-compose down && docker-compose up -d && docker-compose logs -f