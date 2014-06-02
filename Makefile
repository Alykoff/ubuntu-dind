trusty:
	@cd 14.04 && docker build -t nitrousio/ubuntu-dind:14.04 .
	@docker tag nitrousio/ubuntu-dind:14.04 nitrousio/ubuntu-dind:trusty
.PHONY: trusty

precise:
	@cd 12.04 && docker build -t nitrousio/ubuntu-dind:12.04 .
	@docker tag nitrousio/ubuntu-dind:12.04 nitrousio/ubuntu-dind:precise
.PHONY: precise

all: trusty precise
.PHONY: all
