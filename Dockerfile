FROM nginx:latest
MAINTAINER Ruslan
LABEL version=1.0
COPY index.html /usr/share/nginx/html/index.html
COPY nginx.conf /etc/nginx/nginx.conf
EXPOSE 80/tcp
CMD ["nginx", "-g", "daemon off;"]
