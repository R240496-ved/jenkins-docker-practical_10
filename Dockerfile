FROM nginx

COPY index.html /usr/share/nginx/html/index.html
COPY products.html /usr/share/nginx/html/products.html

EXPOSE 80
