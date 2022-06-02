FROM ubuntu:20.04

RUN apt-get update && apt-get install -y nginx --no-install-recommends && apt-get clean && rm -rf /var/lib/apt/lists/*


COPY /config/nginx.conf /etc/nginx/nginx.conf
COPY ./www /www

EXPOSE 80
CMD ["nginx"]