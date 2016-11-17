FROM phusion/baseimage:latest

# Disable interactive mode
RUN DEBIAN_FRONTEND=noninteractive

# Locale generation
RUN locale-gen en_US.UTF-8

# Set the environment variables
ENV LANGUAGE=en_US.UTF-8
ENV LC_ALL=en_US.UTF-8
ENV LC_CTYPE=UTF-8
ENV LANG=en_US.UTF-8
ENV TERM xterm

# Install "software-properties-common" (for the "add-apt-repository")
RUN apt-get update
RUN apt-get install -y software-properties-common

# Add the "PHP 7" ppa
RUN add-apt-repository -y ppa:ondrej/php

# Install PHP-CLI 7, some PHP extentions and some useful Tools with APT
RUN apt-get update && apt-get install -y --force-yes \
    php7.0-cli \
    php7.0-common \
    php7.0-curl \
    php7.0-json \
    php7.0-xml \
    php7.0-mbstring \
    php7.0-mcrypt \
    php7.0-mysql \
    php7.0-pgsql \
    php7.0-sqlite \
    php7.0-sqlite3 \
    php7.0-zip \
    sqlite3 \
    libsqlite3-dev \
    git \
    curl \
    vim \
    nano \
    httpie

# Clean up, to free some space
RUN apt-get clean

# Install node (this is needed because Ubuntu ships with old versions of node
# and npm)
RUN curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash -
RUN sudo apt-get install -y nodejs

# Install dependencies
RUN npm install -g gulp
RUN npm install -g webpack
RUN npm install -g laravel-echo-server

# Link the global gulp to be used locally
RUN npm link gulp

# Add an alias for PHPUnit
RUN echo "alias phpunit='./vendor/bin/phpunit'" >> ~/.bashrc

# Install Composer
RUN curl -s http://getcomposer.org/installer | php \
    && mv composer.phar /usr/local/bin/ \
    && echo "alias composer='/usr/local/bin/composer.phar'" >> ~/.bashrc

# Source the bash
RUN . ~/.bashrc

# Copy the ssh keys
COPY ssh/id_rsa /home/root/.ssh/
COPY ssh/id_rsa.pub /home/root/.ssh/

# Clean up
RUN apt-get clean
RUN rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

WORKDIR /var/www/html