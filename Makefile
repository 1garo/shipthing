.PHONY: dev

compose:
	@docker-compose up -d || (echo "Compose failed, stopping execution"; exit 1)

uploader:
	@air

dev: compose uploader
