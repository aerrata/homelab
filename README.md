# Homelab

Docker Compose definitions for self-hosted applications used in my homelab.

## Usage

Each service has its own directory with a `docker-compose.yaml` and `.env.example` file. To start a service:

```bash
cd /opt/docker
git clone https://github.com/aerrata/homelab.git .
cd <service-name>
cp .env.example .env
# Edit .env and adjust variables as needed
docker compose up -d
```

