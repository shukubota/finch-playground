FROM amazonlinux:2
RUN yum update -y && yum install -y net-tools which vim strace tcpdump jq

# nginx,PHP実行環境
RUN yum install -y https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm \
  && yum install -y http://rpms.famillecollet.com/enterprise/remi-release-7.rpm \
  && yum install -y nginx php56-php-fpm php56-php-cli php56-php-mbstring php56-php-pecl-apcu php56-php-gd php56-php-mcrypt php56-php-pdo php56-php-opcache php56-php-pecl-memcache php56-php-mysqlnd php56-php-pecl-redis php56-php-xdebug
RUN ln -fs /opt/remi/php56/root/usr/bin/php /usr/bin/php

RUN curl -sS https://getcomposer.org/installer | php && mv composer.phar /usr/bin/composer

RUN curl -sL https://rpm.nodesource.com/setup_9.x | bash - \
    && yum install -y gcc-c++ nodejs

RUN yum install -y python3 \
  && pip3 install awscli \
  && aws configure set aws_access_key_id dummy \
  && aws configure set aws_secret_access_key dummy \
  && aws configure set default.region us-east-1

RUN yum install -y cronie git unzip less wget tar

RUN mkdir -p /var/cache/nginx
RUN mkdir -p /var/local/nginx/shared/{storage/log,sites/yapp.li/brandapp/{apns,asset,batch,drive,lmdb,misc}}
RUN mkdir -p /var/local/yappli/shared/storage/{app/stampcard,database/brandapp,framework/{cache,sessions,views},logs}

COPY ./run.sh /app/run.sh
WORKDIR /app
CMD ["bash", "/app/run.sh"]
