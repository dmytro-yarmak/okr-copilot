SHELL := /bin/bash

.PHONY: install-codex-skills install-codex-skills-force

install-codex-skills:
	./scripts/install-codex-skills.sh

install-codex-skills-force:
	./scripts/install-codex-skills.sh --force
