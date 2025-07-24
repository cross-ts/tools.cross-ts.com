CACHE_HOME := .cache
RUN_CACHE := $(CACHE_HOME)/running

DOCKER_COMPOSE := docker compose -f compose.yml

.PHONY: up
up: $(RUN_CACHE)
$(RUN_CACHE): compose.yml
	@mkdir -p $(CACHE_HOME)
	@$(DOCKER_COMPOSE) up -d
	@touch $@

.PHONY: down
down:
	@$(DOCKER_COMPOSE) down
	@rm -f $(RUN_CACHE)

.PHONY: open
open: $(RUN_CACHE)
	@open "http://$$($(DOCKER_COMPOSE) port app 80)"
