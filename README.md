# Proyecto Producto - Imágenes de Docker

Este proyecto contiene las imágenes Docker para una aplicación Spring Boot (`producto-spring_app`) y una base de datos MySQL, disponibles en GitHub Packages. Sigue los pasos a continuación para descargar y ejecutar ambas imágenes.

---

## Descargar y Ejecutar las Imágenes

Ejecuta los siguientes comandos para descargar ambas imágenes y levantar los contenedores de MySQL y la aplicación Spring Boot:

```bash
# Descargar y ejecutar MySQL
docker pull ghcr.io/noeljehu/producto:mysql
docker run -d --name mysql-container -e MYSQL_ROOT_PASSWORD=123456 -e MYSQL_DATABASE=producto -p 3307:3306 ghcr.io/noeljehu/producto:mysql

# Descargar y ejecutar la Aplicación Spring Boot
docker pull ghcr.io/noeljehu/producto:producto-spring_app
docker run -d --name spring-app-container -p 8080:8080 ghcr.io/noeljehu/producto:producto-spring_app
