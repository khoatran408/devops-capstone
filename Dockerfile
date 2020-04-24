FROM nginx:latest
RUN apt-get update && apt-get install tidy -y 
ADD index.html /usr/share/nginx/html/
EXPOSE 80
