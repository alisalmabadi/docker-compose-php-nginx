# Use the official PHP 8.2 image
FROM php:8.2-fpm

# Set the working directory
WORKDIR /var/www/html

# Install PHP extensions
RUN docker-php-ext-install mysqli pdo pdo_mysql

# Copy the current directory contents into the container at /var/www/html
COPY . /var/www/html

# Set appropriate permissions
RUN chown -R www-data:www-data /var/www/html
RUN usermod -u 1000 www-data

CMD ["php-fpm","-F"]

COPY php-fpm.conf /usr/local/etc/php-fpm.conf

# Expose port 80 to the Docker host, so we can access it from the outside
EXPOSE 9000