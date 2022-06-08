FROM nginx

# hadolint ignore=DL3008
#RUN apt-get update && apt-get install -y nginx --no-install-recommends && apt-get clean && rm -rf /var/lib/apt/lists/*


COPY /config/nginx.conf /etc/nginx/nginx.conf
COPY ./www /www

# forward request and error logs to docker log collector
RUN ln -sf /dev/stdout /var/log/nginx/access.log
RUN ln -sf /dev/stderr /var/log/nginx/error.log

EXPOSE 80
CMD ["nginx","-g","daemon off;"]