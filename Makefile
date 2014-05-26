all:
	@ruby update-dockerfiles.rb
	@./build.sh
.PHONY: all
