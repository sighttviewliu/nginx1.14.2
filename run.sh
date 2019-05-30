#https://github.com/chentex/docker-nginx-centos
docker run -d -p 1080:80 --name nginx1142 --rm  nginx:1.14.2
docker run -d -p 1080:80 --name nginx1142 --rm -v /custom/volume/path:/data/www nginx:1.14.2
docker run -it -p 1080:80 --name nginx1142 --rm  nginx:1.14.2
docker run -it -p 1080:80 --name nginx1142 --rm -v /custom/volume/path:/data/www nginx:1.14.2

## For testing
docker network create --driver=bridge --subnet=192.168.100.0/24 is
#### nginx 1
docker -D create -it --ip 192.168.100.151 -p 18080:80 --name nginx1142_0 --network=is --rm -v $(pwd)/nginx.conf:/etc/nginx/nginx.conf -v $(pwd)/index.html_0:/data/www/index.html nginx:1.14.2
docker start nginx1142_0
#### nginx 2
docker -D create -it --ip 192.168.100.152 -p 18081:80 --name nginx1142_1 --network=is --rm -v $(pwd)/nginx.conf:/etc/nginx/nginx.conf -v $(pwd)/index.html_1:/data/www/index.html nginx:1.14.2
docker start nginx1142_1
