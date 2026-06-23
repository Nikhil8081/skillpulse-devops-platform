FROM nginx:1.27-alpine
RUN apk upgrade --no-cache
RUN rm -rf /usr/share/nginx/html/*
COPY index.html /usr/share/nginx/html/
COPY css/ /usr/share/nginx/html/css/
COPY js/ /usr/share/nginx/html/js/
COPY nginx.conf /etc/nginx/conf.d/default.conf
EXPOSE 80
