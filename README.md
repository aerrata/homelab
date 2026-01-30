# Homelab

Docker Compose definitions for self-hosted applications used in my homelab.

## Services

| Service | Description |
|---------|-------------|
| [adguard-home](adguard-home/) | Network-wide ad and tracker blocking DNS server |
| [copyparty](copyparty/) | File sharing and hosting server |
| [flood](flood/) | Web UI for rTorrent with bundled rTorrent client |
| [grafana](grafana/) | Monitoring stack with Grafana, Prometheus, and Node Exporter |
| [immich](immich/) | Self-hosted photo and video backup with machine learning |
| [it-tools](it-tools/) | Collection of handy developer and IT tools |
| [jellyfin](jellyfin/) | Media streaming server |
| [kiwix](kiwix/) | Offline content server for ZIM files (Wikipedia, etc.) |
| [koffan](koffan/) | Shopping list application |
| [metube](metube/) | Web UI for yt-dlp video downloader |
| [nextcloud](nextcloud/) | Self-hosted cloud storage and collaboration platform |
| [searxng](searxng/) | Privacy-respecting metasearch engine |
| [vaultwarden](vaultwarden/) | Bitwarden-compatible password manager |

## Usage

Each service has its own directory with a `docker-compose.yaml` file. To start a service:

```bash
git clone https://github.com/aerrata/homelab.git
cd homelab/<service-name>
cp .env.example .env
# Edit .env and adjust variables as needed
docker compose up -d
```

