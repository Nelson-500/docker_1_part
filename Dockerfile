FROM centos

RUN yum install httpd -y

ADD  startbootstrap-agency-gh-pages /var/www/html
 
CMD apachectl -DFOREGROUND
