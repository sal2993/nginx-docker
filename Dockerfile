From ubuntu

RUN apt update
RUN apt install -y wget dialog net-tools
RUN apt install -y nginx

RUN rm -v /etc/nginx/nginx.conf
ADD nginx.conf /etc/nginx/
RUN echo "daemon off;" >> /etc/nginx/nginx.conf

EXPOSE 80

CMD service nginx start