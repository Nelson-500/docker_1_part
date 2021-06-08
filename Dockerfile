
FROM centos

LABEL version=1.0
LABEL decription="THis is an apache image"

RUN yum install httpd -y

COPY  startbootstrap-agency-gh-pages /var/www/html

RUN echo *$(whoami)* > /var/www/html/user1.html

RUN useradd nelson


USER nelson

RUN echo *$(whoami)* > /tmp/user2.html

VOLUME /var/www/html 

USER root

RUN cp /tmp/user2.html /var/www/html/user2.html
 
CMD apachectl -DFOREGROUND

