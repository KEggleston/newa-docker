FROM newa-base:v1.0

COPY newa /newa
RUN cd /newa/newaModel/dmcast; gcc -shared *.c -fPIC -o libdmcast.so

WORKDIR /newa

COPY supervisord.conf /etc/supervisor/supervisord.conf
COPY nginx.conf /usr/local/nginx/conf/nginx.conf
COPY cors-options.conf /usr/local/nginx/conf/cors-options.conf
COPY scgi_params /usr/local/nginx/conf/scgi_params

EXPOSE 80

CMD ["/usr/bin/supervisord","-c","/etc/supervisor/supervisord.conf"]
