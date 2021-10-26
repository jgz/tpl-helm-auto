FROM nginx:alpine
# https://github.com/nginxinc/docker-nginx/blob/d496baf859613adfe391ca8e7615cc7ec7966621/mainline/alpine/Dockerfile

COPY nginx.conf /etc/nginx/nginx.conf

COPY src /usr/share/nginx/html
