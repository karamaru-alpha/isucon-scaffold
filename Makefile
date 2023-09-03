HOSTNAME:=$(shell hostname)
BRANCH:=main

.PHONY: deploy
deploy: checkout start

.PHONY: checkout
checkout:
	git fetch && \
	git checkout . && git clean -df . &&\
	git reset --hard origin/$(BRANCH) && \
	git switch -C $(BRANCH) origin/$(BRANCH)

.PHONY: start
start:
	cd $(HOSTNAME) && ./deploy.sh
