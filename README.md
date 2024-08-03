### Example Usage

##### With default content:

```yaml
services:
  vitrin:
    container_name: vitrin
    image: ghcr.io/mehdi-behrooz/freiheit-vitrin:latest
  environment:
      - LOG_LEVEL=notice #optional
```

##### With custom content:

```yaml
services:
  vitrin:
    container_name: vitrin
    image: ghcr.io/mehdi-behrooz/freiheit-vitrin:latest
  volumes:
      - /var/www/html/:/www/:ro
  environment:
      - LOG_LEVEL=notice
```
