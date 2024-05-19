lint:
	pre-commit run --all-files

test:
	@cd app; go test ./... -v

service-up:
	docker-compose up --build
