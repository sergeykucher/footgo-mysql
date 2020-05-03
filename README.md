# Footgo
[FootGo amateur soccer leageue](https://footgo-league.com/)

* Edit /footgo/src/main/resources/application.properties

Replace 'localhost' by IP address of your computer 

* Build a docker image

docker build -t footgo:1.0.2 .

* Start MySQL server

Windows:

docker run --rm --name mysql -v ${PWD}/mysql:/var/lib/mysql -p 3306:3306 -e MYSQL_ROOT_PASSWORD=pwd -e MYSQL_DATABASE=footgo mysql:5.7

Linux:

docker run --rm --name mysql -v $(pwd)/mysql:/var/lib/mysql -p 3306:3306 -e MYSQL_ROOT_PASSWORD=pwd -e MYSQL_DATABASE=footgo mysql:5.7

* Run docker container

docker run --rm --name footgo -p 8080:8080 footgo:1.0.2


