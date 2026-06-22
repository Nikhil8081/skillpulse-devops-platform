# Stage 1 — nothing to build (vanilla HTML/CSS/JS)
FROM nginx:1.27-alpine AS final
# Remove default nginx page
RUN rm -rf /usr/share/nginx/html/*
# Copy our site
COPY html/ /usr/share/nginx/html/
COPY nginx.conf /etc/nginx/conf.d/default.conf
EXPOSE 80
