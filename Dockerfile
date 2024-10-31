# Usa una imagen base de Debian
FROM debian:bullseye AS build

# Instala las dependencias necesarias
RUN apt-get update && \
    apt-get install -y maven openjdk-17-jdk && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# Establece el directorio de trabajo
WORKDIR /app

# Copia el archivo pom.xml y descarga las dependencias
COPY pom.xml ./
COPY src ./src
RUN mvn clean package -DskipTests

# Usa una imagen base de Debian para ejecutar la aplicación
FROM debian:bullseye-slim

# Instala solo el JRE necesario para ejecutar la aplicación
RUN apt-get update && \
    apt-get install -y openjdk-17-jre && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# Establece el directorio de trabajo
WORKDIR /app

# Copia el archivo JAR generado desde la etapa de construcción
COPY --from=build /app/target/producto-0.0.1-SNAPSHOT.jar app.jar

# Expone el puerto en el que la aplicación escucha
EXPOSE 8080

# Comando para ejecutar la aplicación
ENTRYPOINT ["java", "-jar", "app.jar"]
