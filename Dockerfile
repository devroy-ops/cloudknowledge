FROM centos
MAINTAINER devroypartner@gmail.com
RUN yum install -y httpd \
  zip \
 unzip 
ADD https://www.free-css.com/free-css-templates/page275/triple-p /var/www/html/
WORKDIR /var/www/html
RUN unzip photogenic.zip
RUN cp -rvf photogenic/* .
RUN rm -rf photogenic photogenic.zip 
CMD ["/usr/sbin/httpd", "-D",  "FOREGROUND"]
EXPOSE 80
