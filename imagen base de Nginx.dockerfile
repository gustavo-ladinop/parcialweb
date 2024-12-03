# Usamos una imagen base de Nginx
FROM nginx:latest

# Copiamos el contenido de la página web desde el directorio actual al contenedor
COPY ./html /usr/share/nginx/html

# Exponemos el puerto 80 para que Nginx esté disponible
EXPOSE 80

# Comando para ejecutar Nginx en primer plano
CMD ["nginx", "-g", "daemon off;"]
