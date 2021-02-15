# Spring Boot Example

Example project for workshops.

## Requirements

* maven
* java 8
* docker

## Build

```bash
mvn package
```

## Test

```bash
mvn test --fail-at-end
```

## Build with Docker

The Dockerfile includes the `mvn package`.

```bash
docker build -f Dockerfile.FullBuild -t spring-boot-example .
```

## Package with Docker

The Dockerfile does not include `mvn package`.
It expects a jar-file in the `target`-directory.

```bash
docker build -f Dockerfile.Package -t spring-boot-example .
```
