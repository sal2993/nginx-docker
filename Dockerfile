From ubuntu

RUN apt update
RUN apt install -y wget dialog net-tools
RUN apt install -y nginx

Add nginx.conf /etc/nginx.conf
RUN echo "daemon off;" >> /etc/nginx/nginx.conf

EXPOSE 80

CMD service nginx start