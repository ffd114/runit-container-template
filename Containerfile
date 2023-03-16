FROM alpine:3

WORKDIR /app

RUN apk update && apk upgrade && apk add --no-cache runit

RUN mkdir -p /services
COPY ./containers/services /services
RUN chmod -R +x /services

COPY ./containers/entrypoint.sh /app/
RUN chmod +x /app/entrypoint.sh

ENTRYPOINT  /app/entrypoint.sh
