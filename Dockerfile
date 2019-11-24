FROM wordpress:4.9.1-apache

COPY html /var/www/html

RUN chown -R www-data:www-data /var/www/html/
RUN chmod -R 777 /var/

ENTRYPOINT ["apache2-foreground"]
