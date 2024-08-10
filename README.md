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

##### With custom messages:
```yaml
services:
  vitrin:
    container_name: vitrin
    image: ghcr.io/mehdi-behrooz/freiheit-vitrin:latest
  environment:
      - LOG_LEVEL=notice                     #optional
      - TITLE="Help!"                        #optional
      - HEADING="Under the Waters"           #optional
      - MESSAGE="We will never be back."     #optional
```


##### With custom html files:

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

