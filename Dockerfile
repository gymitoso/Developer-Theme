FROM nginx:alpine

COPY docker/default.conf /etc/nginx/conf.d

## Remove default nginx website
RUN rm -rf /usr/share/nginx/html/*

ADD ./ /usr/share/nginx/html

CMD ["nginx", "-g", "daemon off;"]
