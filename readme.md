# Bedrock

A simple Wordpress (Bedrock) / MySQL setup.

## Usage
### Add .env
```bash
cp .env.example .env
```
### Add bedrock
```bash
composer create-project roots/bedrock site
```
```bash
cp site/.env.example site/.env
```
### Build / start containers
```bash
docker-compose up -d mysql
```
```bash
docker-compose up -d
```

## Notes
- the `docker-compose.yml` assumes traefik is running externally
- the domain must be set in the following places:
    - `.env`
    - `site/.env`
    - `nginx/site.conf`
    - `/etc/hosts`
