FROM java:openjdk-8-alpine

LABEL maintainer="philipp@haussleiter.de"

ARG version

RUN wget http://maven.javastream.de/com/badlogicgames/packr/packr/$version/packr-$version-jar-with-dependencies.jar -O packr.jar

COPY packr.sh /packr.sh

RUN chmod +x /packr.sh

CMD ["/packr.sh"]