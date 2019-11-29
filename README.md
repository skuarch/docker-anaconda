> create image

docker build --no-cache -t anaconda:latest .

> run container no volume

docker run --name jupyter -i -t -p 8888:8888 anaconda

> mounting local volume

docker volume create jupyter
docker run --name jupyter-vol2 -i -t -p 8888:8888 -v jupyter:/jupyter anaconda

> local nfs volumen

docker run --name jupyter-vol2 -i -t -p 8888:8888 -v $(readlink -f /home/skuarch/Docker/volumes/jupyter):/jupyter anaconda

> before create /home/skuarch/Docker/volumes/jupyter 
