FROM img1
RUN sudo yum install httpd -y
COPY ./index.html /var/www/html/
EXPOSE 80
RUN /usr/sbin/httpd
