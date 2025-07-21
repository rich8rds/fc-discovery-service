FROM eclipse-temurin:23-jre

ADD target/DiscoveryService.jar /DiscoveryService.jar
ADD docker/collector/opentelemetry-javaagent.jar /opentelemetry-javaagent.jar

ENTRYPOINT java -javaagent:/opentelemetry-javaagent.jar -jar /DiscoveryService.jar