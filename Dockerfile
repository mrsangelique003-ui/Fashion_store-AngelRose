# ============================================
# DOCKERFILE - BellaRose Fashion Store
# Uses PHP + Apache web server
# ============================================

# Start from PHP with Apache built in
FROM php:8.1-apache

# Install the MySQL extension for PHP
RUN docker-php-ext-install mysqli pdo pdo_mysql

# Copy all our website files into the Apache web root
COPY . /var/www/html/

# Give Apache permission to read the files
RUN chown -R www-data:www-data /var/www/html/

# Open port 80 (the web port)
EXPOSE 80

# Apache starts automatically
CMD ["apache2-foreground"]
