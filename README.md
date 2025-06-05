# Docker

## How to build an image

```terminal
docker build -t new-portal:1.0.0 .
```

## How to run a container

```terminal
docker run -d -p 8000:8000 --name new-portal new-portal:1.0.0
```
