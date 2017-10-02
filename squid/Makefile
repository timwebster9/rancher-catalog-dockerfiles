.DEFAULT=all

all:
	docker build -t 192.168.1.116:5001/timw/squid .

push:
	docker push 192.168.1.116:5001/timw/squid

start:
	docker-compose down && docker-compose up -d && docker-compose logs -f