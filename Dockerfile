FROM bitnami/nginx:latest
USER root
RUN apt-get update
RUN apt-get install -y curl wget
COPY nginx.conf /opt/bitnami/nginx/conf/server_blocks/app.conf
USER 1001
ENTRYPOINT ["scripts/entrypoint.sh"]
