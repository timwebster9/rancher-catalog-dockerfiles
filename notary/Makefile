.DEFAULT=all

build-server:
	docker build -f Dockerfile.server -t repo.rancher.zone/timw/notary-server .

run-server:
	docker run repo.rancher.zone/timw/notary-server -config=/config/server-config.json

build-signer:
	docker build -f Dockerfile.signer -t repo.rancher.zone/timw/notary-signer .

run-signer:
	docker run -e NOTARY_SIGNER_PASSWORDALIAS1=mypassword repo.rancher.zone/timw/notary-signer -config=/config/signer-config.json

build-signer-db:
	docker build -f Dockerfile.signer-db -t repo.rancher.zone/timw/notary-signer-db .

run-signer-db:
	docker run -e MYSQL_ALLOW_EMPTY_PASSWORD="yes" repo.rancher.zone/timw/notary-signer-db

build-server-db:
	docker build -f Dockerfile.server-db -t repo.rancher.zone/timw/notary-server-db .

run-server-db:
	docker run -e MYSQL_ALLOW_EMPTY_PASSWORD="yes" repo.rancher.zone/timw/notary-server-db

up:
	docker-compose up -d && docker-compose logs -f

down:
	docker-compose down