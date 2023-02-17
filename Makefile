bucket = blake-walters.com

.PHONY: build

build:
	@echo "===== building ====="
	@bundle install
	@npm install
	@bundle exec middleman build
