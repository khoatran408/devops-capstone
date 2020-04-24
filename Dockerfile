FROM nginx:latest

RUN apt-get update && apt-get install tidy -y && cp index.html /usr/share/nginx/html/

EXPOSE 80
