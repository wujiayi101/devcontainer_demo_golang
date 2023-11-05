test:
	@cd app; go test ./... -v

ci: test
	@SKIP=go-unit-tests pre-commit run --all-files
