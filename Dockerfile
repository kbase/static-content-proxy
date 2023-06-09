FROM bitnami/nginx:latest
RUN apt-get update -y
RUN apt-get install -y vim curl wget
COPY nginx.conf /opt/bitnami/nginx/conf/server_blocks/app.conf
