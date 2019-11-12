FROM wordpress:php7.2-fpm

# Install sockets for PHP
RUN docker-php-ext-install sockets

# Install wp-cli
RUN curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar \
  # && php wp-cli.phar --info \ 
  && chmod +x wp-cli.phar \
  && mv wp-cli.phar /usr/local/bin/wpexit
