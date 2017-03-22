FROM newa-base:v1.0

COPY newa /newa
WORKDIR /newa

COPY supervisord.conf /etc/supervisor/supervisord.conf
COPY nginx.conf /usr/local/nginx/conf/nginx.conf
COPY scgi_params /usr/local/nginx/conf/scgi_params

EXPOSE 80

CMD ["/usr/bin/supervisord","-c","/etc/supervisor/supervisord.conf"]
