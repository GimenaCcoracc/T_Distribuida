FROM openjdk:17-jdk-slim

# Definir el directorio de trabajo
WORKDIR /app

# Copiar el archivo JAR generado en el directorio de trabajo
COPY target/attendance-0.0.1-SNAPSHOT.jar attendance-kafka.jar

# Exponer el puerto configurado (8082)
EXPOSE 8083

# Comando para ejecutar el servicio de Spring Boot
CMD ["java", "-jar", "attendance-kafka.jar"]
