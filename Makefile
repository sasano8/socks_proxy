all: up

up:
	@docker-compose down --rmi local
	@docker-compose up -d
	@sleep 0.5
	@docker ps -a -n 1
	@make test

test:
	@curl --proxy socks5://localhost:3128 https://example.co.jp || true  # must be could not resolve host
	@curl --proxy socks5://localhost:3128 https://google.co.jp
