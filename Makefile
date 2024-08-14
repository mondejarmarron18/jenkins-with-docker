development:
	@echo "Starting development environment"
production:
	@echo "Starting production environment"
test:
	@echo "Starting test environment"
jenkins:
	@echo "Starting test environment"

dev:
	docker compose -p jenkins-app-dev -f docker/development/docker-compose.yml up --build

prod: production
	docker compose -p jenkins-app -f docker/production/docker-compose.yml up --build -d

test: test
	docker compose -p jenkins-app-test -f docker/test/docker-compose.yml up --build

jenkins: jenkins
	docker compose -p jenkins-cicd -f docker/jenkins/docker-compose.yml up --build