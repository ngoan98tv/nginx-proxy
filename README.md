# nginx-proxy
An deployment example for nginx-proxy on docker

## Getting started

To start nginx, run `docker compose up -d`

To start a service, adding following config to `docker-compose.yml`

```yml
# your service configuration....
  environment:
      - VIRTUAL_HOST=your-domain.com
      - LETSENCRYPT_HOST=your-domain.com

# at the end of the file
networks:
  default:
    external: true
    name: nginx-proxy
```

## Reference

https://github.com/nginx-proxy/nginx-proxy
