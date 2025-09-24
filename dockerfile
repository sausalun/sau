# Base image: PHP with Apache (for your index.php)
FROM php:8.1-apache

# Install dependencies (if needed, e.g., extensions)
RUN docker-php-ext-install mysqli pdo pdo_mysql  # Example for DB; remove if not needed

# Copy app files from GitHub repo
COPY . /var/www/html/

# Set working directory
WORKDIR /var/www/html

# Expose port
EXPOSE 80

# Start Apache
CMD ["apache2-foreground"]