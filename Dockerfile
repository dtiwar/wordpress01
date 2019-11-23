FROM wordpress:4.9.1-apache

COPY html /var/www/html

RUN chown -R www-data:www-data /var
RUN chmod -R 777 /var
RUN chmod -R 777 /var/www/html/html/wp-content/uploads
ENTRYPOINT ["apache2-foreground"]
