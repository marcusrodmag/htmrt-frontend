FROM nginx:1.17.6

RUN rm /etc/nginx/conf.d/default.conf
# RUN rm -Rf /usr/share/nginx/html
RUN mkdir /usr/share/nginx/static

COPY static /usr/share/nginx/static
COPY frontend.conf /etc/nginx/conf.d/
COPY nginx.conf /etc/nginx/

#CMD ["/usr/sbin/nginx", "-s", "quit"]