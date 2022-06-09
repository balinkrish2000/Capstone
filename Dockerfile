# hadolint ignore=DL3006
FROM nginx

COPY /config/nginx.conf /etc/nginx/nginx.conf
COPY ./www /www

EXPOSE 80
CMD ["nginx","-g","daemon off;"]