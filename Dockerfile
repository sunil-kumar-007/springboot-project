FROM openjdk:11

COPY target/springboot2webmvccontrollertoui-1.0.jar  /usr/app/

WORKDIR /usr/app/

ENTRYPOINT ["java", "-jar", "springboot2webmvccontrollertoui-1.0.jar"]