FROM openjdk:17-jdk-slim

# Definir el directorio de trabajo
WORKDIR /app

# Copiar el archivo JAR generado en el directorio de trabajo
COPY target/issue-0.0.1-SNAPSHOT.jar issue-kafka.jar

# Exponer el puerto configurado (8082)
EXPOSE 8082

# Comando para ejecutar el servicio de Spring Boot
CMD ["java", "-jar", "issue-kafka.jar"]
