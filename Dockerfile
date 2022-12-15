# syntax=docker/dockerfile:1

FROM eclipse-temurin:17-jdk-jammy as build
WORKDIR /app
COPY . .
RUN ./mvnw -DskipTests -Dcheckstyle.skip package

FROM eclipse-temurin:17-jre-jammy as production
EXPOSE 8080
COPY --from=build /app/target/spring-petclinic-*.jar /spring-petclinic.jar
CMD ["java", "-Djava.security.egd=file:/dev/./urandom", "-jar", "/spring-petclinic.jar"]

# FROM openjdk:9-jre-alpine
# EXPOSE 8080
# ARG JAR=spring-petclinic-2.2.0.BUILD-SNAPSHOT.jar
# COPY target/$JAR /app.jar
# ENTRYPOINT ["java","-jar","/app.jar"]

# FROM eclipse-temurin:17-jdk-jammy as base
# WORKDIR /app 
# COPY .mvn/ .mvn
# COPY mvnw pom.xml ./ 
# RUN ./mvnw dependency:resolve 
# COPY src ./src 

# FROM base as development 
# CMD ["./mvnw", "spring-boot:run", "-Dspring-boot.run.profiles=mysql", "-Dspring-boot.run.jvmArguments='-agentlib:jdwp=transport=dt_socket,server=y,suspend=n,address=*:8000'"] 

# FROM base as build 
# RUN ./mvnw package 
# FROM eclipse-temurin:17-jre-jammy as production
# EXPOSE 8080 
# COPY --from=build /app/target/spring-petclinic-*.jar /spring-petclinic.jar 
# CMD ["java", "-Djava.security.egd=file:/dev/./urandom", "-jar", "/spring-petclinic.jar"]

