FROM scratch
MAINTAINER Anton Tsviatkou "https://git.io/anton"

ADD flash-cards-container /
ADD workdir /static
ENV FLASH_CARDS_SERVER_PORT=3031
EXPOSE $FLASH_CARDS_SERVER_PORT

ENTRYPOINT ["/flash-cards-container"]
