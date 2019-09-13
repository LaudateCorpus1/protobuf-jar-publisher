FROM gradle:5.6.2-jdk11

USER root
WORKDIR /
RUN mkdir -p /in && mkdir -p /src/main/proto
VOLUME /in
COPY build.gradle /
RUN -PprotobufVersion=3.9.1 -PgrpcVersion=1.23.0 publish
ENTRYPOINT ["gradle", "--no-daemon", "clean"]
