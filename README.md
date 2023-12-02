# Composerize Docker

```
version: "3"
services:
    composerize:
        image: ddsderek/composerize:latest
        container_name: composerize
        restart: always
        ports:
            - 8080:80
        environment:
            - TZ=Asia/Shanghai
```
