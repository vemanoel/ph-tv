export PODMAN_COMPOSE_PROVIDER ?= $(shell command -v podman-compose)
export COMPOSE_FILE ?= .container/compose.yaml

up:
	@ podman compose up --detach

down:
	@ podman compose down

shell:
	@ podman compose exec dev bash
