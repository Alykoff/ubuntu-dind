trusty:
	@cd 14.04 && docker build -t nitrousio/ubuntu-dind:14.04 .
	@docker tag nitrousio/ubuntu-dind:14.04 nitrousio/ubuntu-dind:trusty
	@docker tag nitrousio/ubuntu-dind:14.04 nitrousio/ubuntu-dind:trusty-1.3.0
.PHONY: trusty

precise:
	@cd 12.04 && docker build -t nitrousio/ubuntu-dind:12.04 .
	@docker tag nitrousio/ubuntu-dind:12.04 nitrousio/ubuntu-dind:precise
	@docker tag nitrousio/ubuntu-dind:12.04 nitrousio/ubuntu-dind:precise-1.3.0
.PHONY: precise

all: trusty precise
.PHONY: all
