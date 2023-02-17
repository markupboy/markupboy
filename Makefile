bucket = blake-walters.com

build:
	@echo "===== building ====="
	@bundle install
	@npm install
	@bundle exec middleman build
