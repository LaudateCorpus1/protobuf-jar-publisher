Protobuf JAR Publisher
----------------------
Docker image that compiles `proto` files to single JAR and publishes it to a Maven repository.

```sh
docker run --rm -v /path/to/my/protos:/in avastsoftware/protobuf-jar-publisher \
 -PprotocVersion=3.5.1-1 -PprotobufJavaVersion=3.5.1 -PgrpcVersion=1.10.0 \
 -PgroupId=com.mycompany.backend -PartifactId=myapp -Pversion=1.0.0 \
 -PmavenUrl=https://maven.mycompany.com -PpublishMavenUrl=https://maven.mycompany.com -PmavenUsername=me -PmavenPassword=secret
```

It's implemented as Gradle project so all the properties are prefixed with `-P`.

| Property | Required | Default value | Description |
| -------- | -------- | ------------- | ----------- |
| protocVersion | yes |  | Version of protoc to use. |
| protobufJavaVersion | yes|  | Version of `protobuf-java` to be used for compilation. |
| grpcVersion | no | | gRPC version to use. If not specified then gRPC plugin is not activated. |
| groupId | yes | | `groupId` of the published artifact. |
| artifactId | yes | | `artifactId` of the published artifact. |
| version | yes | | Version of the published artifact. |
| mavenUrl | no | Maven Central Url | Maven used to resolve runtime dependencies. |
| publishMavenUrl | no | `mavenUrl` | Maven to publish to. |
| mavenUsername | no |  | Username used when publishing to Maven. |
| mavenPassword | no |  | Password used when publishing to Maven. |
