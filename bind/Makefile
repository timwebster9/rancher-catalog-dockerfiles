.DEFAULT=all

all:
	docker build -t mars:5000/timw/bind .
	#docker push mars:5000/timw/bind

start:
	docker-compose down && docker-compose up -d && docker-compose logs -f

stop:
	docker-compose down
