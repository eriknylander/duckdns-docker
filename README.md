# duckdns-docker

Tiny docker container that keeps your duckdns domain's IP address up to date.

## Environment variables

- `DOMAINS` (required) - one or several comma delimited domains
- `TOKEN` (required) - your duckdns token
- `UPDATE_INTERVAL` - the update interval, any accepted value to `sleep`. Defaults to `5m` (5 minutes)
