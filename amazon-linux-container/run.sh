#!/bin/bash

## start php-fpm
#cd /app && /opt/remi/php74/root/sbin/php-fpm -R
#
#cd /app/nginx && ./node_modules/gulp/bin/gulp.js js sass

# start nginx
/usr/sbin/nginx -g "daemon off;"
