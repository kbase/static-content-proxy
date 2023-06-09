#!/usr/bin/env bash

if [ -n "$AUTODEPLOY" ]; then
    echo "AUTODEPLOY environment variable is set. Performing Git clone..."
    git clone https://github.com/kbase/static-content.git /app
else
    echo "AUTODEPLOY environment variable is not set. Skipping Git clone."
fi

exec /opt/bitnami/scripts/nginx/entrypoint.sh /opt/bitnami/scripts/nginx/run.sh

