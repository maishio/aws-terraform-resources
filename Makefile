.PHONY: tasks

help:
	@echo Usage\: make [task]
	@echo --------------------
	@echo
	@cat Makefile
	@echo

fmt:
	terraform fmt --recursive
