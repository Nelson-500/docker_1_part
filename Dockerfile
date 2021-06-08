FROM centos

RUN yum install httpd -y

COPY  indus /var/www/html
 
CMD apachectl -DFOREGROUND
