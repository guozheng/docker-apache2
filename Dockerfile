FROM ubuntu
RUN apt-get update && apt-get install -y apache2 && apt-get install -y apache2-utils && apt-get clean
ENV APACHE_LOG_DIR /var/log/apache2
EXPOSE 80
CMD ["apache2ctl", "-D", "FOREGROUND"]