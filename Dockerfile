# basic Dockerfile
FROM ubuntu

MAINTAINER anthony

RUN apt-get update

CMD ["echo", "Hello Docker!"]