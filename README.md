# composerize
```
version: "3.9"
services:
  composerize:
    image: ddsderek/composerize
    container_name: composerize
    restart: always
    ports:
      - 8080:80
    environment:
      - TZ=Asia/Shanghai
      - PUID=1000
      - PGID=1000
```
