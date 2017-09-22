all: help

help:
	@echo docker-mediawiki
	@echo usage
	@echo - build
	@echo - up
	@echo - down
	@echo - clean

mediawiki:
	wget https://releases.wikimedia.org/mediawiki/1.29/mediawiki-1.29.1.tar.gz
	tar xvf mediawiki-1.29.1.tar.gz
	mv mediawiki-1.29.1 mediawiki
	rm mediawiki-1.29.1.tar.gz

build: mediawiki
	docker-compose build

up: mediawiki
	docker-compose up

up/silent: mediawiki
	docker-compose up -d

down:
	docker-compose down

clean:
	rm -rf mediawiki
	rm -rf db-data


