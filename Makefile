build:
	sudo docker build -t yocto-fetcher .

run:
	sudo docker run yocto-fetcher

info:
	sudo docker ps -a

delete-image:
	sudo docker rmi --force yocto-fetcher
