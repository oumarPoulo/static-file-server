FROM nginx:1.19.6
LABEL maintainer="Alpha DIALLO <oumarpoulotech@gmail.com>"
RUN mkdir static
COPY ./templates/mime.types /etc/nginx/mime.types
COPY ./templates/nginx.conf /etc/nginx/nginx.conf
