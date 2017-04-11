FROM ubuntu:latest
MAINTAINER Anton Tsviatkou "https://git.io/anton"

RUN mkdir -p /var/www
COPY workdir /var/www/static
COPY flash-cards-container /var/www/
RUN chmod u+x /var/www/flash-cards-container

RUN chmod -R 0777 /var/www/static
ENV FLASH_CARDS_SERVER_PORT=3031
EXPOSE $FLASH_CARDS_SERVER_PORT
CMD cd /var/www/ && ./flash-cards-container
