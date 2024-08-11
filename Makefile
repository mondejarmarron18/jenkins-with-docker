development:
	@echo "Starting development environment"
production:
	@echo "Starting production environment"

dev:
	docker compose -p jenkins-app-dev -f docker/development/docker-compose.yml up --build

prod: production
	docker compose -p jenkins-app -f docker/production/docker-compose.yml up --build -d