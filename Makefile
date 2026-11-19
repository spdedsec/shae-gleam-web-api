.PHONY: build test release clean install help
GLEAM ?= gleam

build:
	@$(GLEAM) build

test:
	@$(GLEAM) test

release: build
	@tar czf dist/shae-gleam-web-api-v0.1.0-src.tar.gz src/ scripts/ Makefile README.md DESIGN.md LICENSE docs/

install: build
	@echo "Run with: gleam run"

clean:
	@rm -rf dist/

help:
	@echo "Targets: build test release install clean help"
