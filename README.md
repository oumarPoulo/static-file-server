# static-file-server

## Building docker image

```sh
docker build -t oumarpoulo/static-file-server:1.0.0 --force-rm . --no-cache=true
docker push oumarpoulo/static-file-server:1.0.0
```

## Usage

```yaml
version: '3'

services:
  file-server:
    container_name: file-server
    image: oumarpoulo/static-file-server:1.0.0
    restart: on-failure:10
    ports:
      - 8080:80
    volumes:
      - ./uploads/:/static
```