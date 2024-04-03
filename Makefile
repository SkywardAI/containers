.PHONY: build
build:
	@echo "Building the project..."
	@docker build -t skywardai:test .

.PHONY: poetry
poetry:
	@pipx install poetry==1.8.2


.PHONY: install
install:
	@poetry install --no-root -vvv

.PHONY: plugin
plugin:
	@poetry self add poetry-plugin-export

.PHONY: expo
expo:
	@poetry export -f requirements.txt --output requirements.txt

.PHONY: show
show:
	@poetry show ${name}