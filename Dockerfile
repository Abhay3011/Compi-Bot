FROM python:3.9.16-bullseye
RUN mkdir /bot && chmod 777 /bot
WORKDIR /bot
ENV DEBIAN_FRONTEND=noninteractive
RUN apt -qq update && apt -qq install -y git wget pv jq wget python3-dev ffmpeg mediainfo
RUN pip install --upgrade pip 
COPY . .
RUN pip3 install -r requirements.txt
CMD ["bash","run.sh"]
