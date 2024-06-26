FROM nginx:latest

RUN apt-get update && apt-get install -y \
    netcat-openbsd \
    vim \
    curl \ 
&& rm -rf /var/lib/apt/lists/* # Clean up

COPY data/index.html /usr/share/nginx/html/index.html
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]