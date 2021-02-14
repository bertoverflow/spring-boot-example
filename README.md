# Spring Boot Example

Example project for workshops.

## Build

```shell
./mvnw package --batch-mode
```

## Test

```shell
./mvnw test --batch-mode --fail-at-end
```

## Build with Docker

The Dockerfile includes the `mvn package`.

```shell
docker build -f Dockerfile.FullBuild -t spring-boot-example .
```

## Package with Docker

The Dockerfile does not include `mvn package`.
It expects a jar-file in the `target`-directory.

```shell
docker build -f Dockerfile.Package -t spring-boot-example .
```
