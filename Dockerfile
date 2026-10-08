FROM httpd:latest

RUN apt update

COPY devopssourcecode/index.html /usr/local/apache2/htdocs/

EXPOSE 80
