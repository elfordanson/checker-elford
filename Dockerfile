FROM php:8.2-cli

# Set working directory
WORKDIR /app

# Copy project files into the container
COPY . /app

# Install PHP extensions (MySQL if needed)
RUN docker-php-ext-install pdo pdo_mysql

# Start PHP built-in server on Render's PORT
CMD ["sh", "-lc", "php -S 0.0.0.0:${PORT:-10000} -t /app"]
