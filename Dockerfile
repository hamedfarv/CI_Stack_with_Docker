FROM nginx:alpine
COPY website /website
COPY nginx.conf /etc/nginx/nginx.conf
EXPOSE 80