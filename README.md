docker build --no-cache -t anaconda:latest .

docker run --name jupyter -i -t -p 8888:8888 anaconda

<!-- mounting local volume -->
docker run --name jupyter-vol2 -i -t -p 8888:8888 -v $(readlink -f /home/skuarch/Docker/volumes/jupyter):/jupyter anaconda
