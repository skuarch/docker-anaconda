FROM python:latest

ADD https://repo.anaconda.com/archive/Anaconda3-2019.10-Linux-x86_64.sh /
COPY start.sh /

RUN apt-get update && \
apt-get install libgl1-mesa-glx libegl1-mesa libxrandr2 libxrandr2 libxss1 libxcursor1 libxcomposite1 libasound2 libxi6 libxtst6  -y -f && \
chmod +x Anaconda3-2019.10-Linux-x86_64.sh && \ 
bash ./Anaconda3-2019.10-Linux-x86_64.sh -b && \
export PATH=~/anaconda3/bin:$PATH && \
rm -rf Anaconda3-2019.10-Linux-x86_64.sh && \
chmod +x start.sh

EXPOSE 8888
ENTRYPOINT ./start.sh
