Protobuf JAR Publisher [![Docker Automated build](https://img.shields.io/docker/automated/avastsoftware/protobuf-jar-publisher.svg)](https://hub.docker.com/r/avastsoftware/protobuf-jar-publisher/)
----------------------
Docker image that compiles `proto` files to single JAR and publishes it to a Maven repository.

```sh
docker run --rm -v /path/to/my/protos:/in avastsoftware/protobuf-jar-publisher \
 -PprotobufVersion=3.9.1 -PgrpcVersion=1.23.0 \
 -PgroupId=com.mycompany.backend -PartifactId=myapp -Pversion=1.0.0 \
 -PmavenUrl=https://maven.mycompany.com -PpublishMavenUrl=https://maven.mycompany.com -PmavenUsername=me -PmavenPassword=secret
```

It's implemented as Gradle project so all the properties are prefixed with `-P`.

| Property | Required | Default value | Description |
| -------- | -------- | ------------- | ----------- |
| protobufVersion | yes|  | Version of `protoc` and `protobuf-java` to be used for compilation. |
| grpcVersion | no | | gRPC version to use. If not specified then gRPC plugin is not activated. |
| groupId | yes | | `groupId` of the published artifact. |
| artifactId | yes | | `artifactId` of the published artifact. |
| version | yes | | Version of the published artifact. |
| mavenUrl | no | Maven Central Url | Maven used to resolve runtime dependencies. |
| publishMavenUrl | no | `mavenUrl` | Maven to publish to. |
| mavenUsername | no |  | Username used when publishing to Maven. |
| mavenPassword | no |  | Password used when publishing to Maven. |
