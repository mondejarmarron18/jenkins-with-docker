dev:
	@echo "Starting development environment"
	docker compose -p jenkins-app-dev -f docker/development/docker-compose.yml up --build

prod: 
	@echo "Starting production environment"
	docker compose -f docker/production/docker-compose.yml up --build -d

test:
	@echo "Starting test environment"
	docker compose -p jenkins-app-test -f docker/test/docker-compose.yml up --build

jenkins:
	@echo "Starting test environment"
	docker compose -p jenkins -f docker/jenkins/docker-compose.yml up --build