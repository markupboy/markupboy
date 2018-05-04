bucket = markupboy.com

deploy:
	@yarn install --frozen-lockfile
	@yarn cache clean
	@bundle install
	@bundle exec middleman build
	@echo "shipit!"
	@aws s3 sync build/ s3://$(bucket)/ --acl=public-read --delete --cache-control="max-age=1576800000" --exclude "*.html"
	@aws s3 sync build/ s3://$(bucket)/ --acl=public-read --delete --cache-control="max-age=0, no-cache" --exclude "*" --include "*.html"
