FROM centos
MAINTAINER devroypartner@gmail.com
RUN yum install -y httpd \
  zip \
 unzip 
ADD https://www.free-css.com/free-css-templates/page275/triple-p /var/www/html/
WORKDIR /var/www/html
RUN unzip Triple P Free Website Template - Free-CSS.com.zip
RUN cp -rvf Triple P Free Website Template - Free-CSS.com/* .
RUN rm -rf Triple P Free Website Template - Free-CSS.com.zip 
CMD ["/usr/sbin/httpd", "-D",  "FOREGROUND"]
EXPOSE 80
