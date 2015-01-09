#runadock-itworks
#docker build -t runadock/itworks .
#docker run -d --name itworks -p 80:80 -p 443:443 runadock/itworks
FROM dockerfile/ubuntu

RUN add-apt-repository -y ppa:nginx/stable
RUN apt-get update
RUN apt-get install -y nginx

ADD bin/ /usr/sbin/
RUN configure-nginx.sh

ADD tmp/nginx-config /etc/nginx/sites-templates
ADD tmp/nginx-logs /var/logs/nginx

# Add Web-content
ADD src/ /var/www/html
RUN chmod -R 777 /var/www/html


VOLUME ["/var/log/nginx", "/etc/nginx/sites-templates", "/var/www/html"]
EXPOSE 80 443
WORKDIR /etc/nginx

ENTRYPOINT ["entrypoint.sh"]
CMD ["nginx"]
