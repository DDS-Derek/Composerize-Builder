FROM ubuntu:20.04
WORKDIR /var/www/
ENV TZ=Etc/GMT-1
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
RUN apt-get update && \
    apt-get install apache2 -y && \
    rm /etc/apache2/sites-available/000-default.conf && \
    rm -r /var/www/html  && \
    rm -rf /var/lib/apt/lists/*
COPY ./000-default.conf /etc/apache2/sites-available
COPY ./composerize /var/www/
EXPOSE 80
CMD ["apache2ctl","-D","FOREGROUND"]
