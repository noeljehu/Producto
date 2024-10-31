# Producto

## Descripción
Este proyecto contiene un contenedor de Docker para una aplicación Spring Boot y una base de datos MySQL.

## Pasos para Descargar y Ejecutar

1.  **Clona el Repositorio**
   ```bash
   git clone https://github.com/noeljehu/Producto.git
   
2    # Descarga las Imágenes de Docker

docker pull ghcr.io/noeljehu/producto:latest

3   # Ejecuta los Contenedores

docker run -d --name mysql_producto -e MYSQL_ROOT_PASSWORD=123456 -p 3307:3306 ghcr.io/noeljehu/producto:latest
docker run -d --name spring_producto --link mysql_producto:mysql -p 8080:8080 ghcr.io/noeljehu/producto:latest



