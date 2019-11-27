docker build --no-cache -t anaconda:latest .

docker run --name jupyter -i -t -p 8888:8888 anaconda
