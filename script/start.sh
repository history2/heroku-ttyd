#!/bin/sh

# set port number to be listened as $PORT or 8888
sed -i -E "s/TO_BE_REPLACED_WITH_PORT/${PORT:-8888}/" /etc/nginx/conf.d/*.conf

# export PORT=${PORT:=8080}

/usr/local/bin/supervisord -c /etc/supervisord.conf