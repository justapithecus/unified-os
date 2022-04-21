.PHONY: dev docker-base

dev:
	DOCKER_COMPOSE_CLI=1 DOCKER_BUILDKIT=1 docker-compose --project-name unified_os \
		--file .devcontainer/docker-compose.clion.yml up --detach
	ssh-keygen -f "${HOME}/.ssh/known_hosts" -R "[localhost]:2222"

docker-base:
	DOCKER_BUILDKIT=1 docker build . --file .devcontainer/Dockerfile.build-base --tag rw/unified-os/build-base:0.1.0-alpha
