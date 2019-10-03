FROM nginx:alpine

COPY docker/default.conf /etc/nginx/conf.d

## Remove default nginx website
RUN rm -rf /usr/share/nginx/html/*

ADD ./ /usr/share/nginx/html
ADD ./docker/ssl /etc/nginx/ssl

CMD ["nginx", "-g", "daemon off;"]