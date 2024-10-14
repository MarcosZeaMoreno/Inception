FROM debian:latest

RUN apt update && apt upgrade -y && apt install -y \
    nginx \
    openssl

RUN mkdir -p /etc/nginx/ssl

RUN openssl req -x509 -nodes -newkey rsa:2048 -keyout /etc/nginx/ssl/inception.key -out /etc/nginx/ssl/inception.crt -subj "/CN/mzea-mor.42.fr/C=ES/L=Malaga"

COPY default /etc/nginx/sites-available/.

EXPOSE 443

CMD ["nginx", "-g", "daemon off;"]
