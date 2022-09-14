FROM openjdk:8-jre-slim
MAINTAINER xuxueli

ENV PARAMS=""

ENV TZ=PRC
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

WORKDIR /app
ADD target/xxl-job-admin-*.jar /app/xxl-job-admin.jar

ENTRYPOINT ["sh","-c","java -jar $JAVA_OPTS /app/xxl-job-admin.jar $PARAMS"]