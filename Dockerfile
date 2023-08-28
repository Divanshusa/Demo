FROM img1
RUN yum install httpd -y
COPY ./index.html /var/www/html/
EXPOSE 80
CMD /usr/sbin/httpd
