#https://github.com/chentex/docker-nginx-centos
docker run -d -p 1080:80 --name nginx1142 --rm  nginx:1.14.2
docker run -d -p 1080:80 --name nginx1142 --rm -v /custom/volume/path:/data/www nginx:1.14.2
docker run -it -p 1080:80 --name nginx1142 --rm  nginx:1.14.2
docker run -it -p 1080:80 --name nginx1142 --rm -v /custom/volume/path:/data/www nginx:1.14.2
