build:
	@./build.sh
.PHONY: build

push:
	@./build.sh PUSH
.PHONY: push

all: build
.PHONY: all
