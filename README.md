Simple Next.js deployment boilerplate with Docker and Bunjs

## Steps

First, build the Docker image:

```bash
docker build -t nextjs-bun-docker:1.0.0 .
```

Then run the Docker container:

```bash
docker compose up -d
```

You can change the ports and other configs by editing the `docker-compose.yml` file.
