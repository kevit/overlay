.DEFAULT_GOAL := help

requirements: ## Install requirements from scratch
	ansible-galaxy install -r requirements.yml -p roles --ignore-errors --force


ping: ## ping hosts
	$(ansible) all $(ansible-flags) -m ping

help:
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'
