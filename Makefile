bucket = markupboy.com

deploy:
	@bundle exec middleman build
	@aws --profile=default s3 sync build/ s3://$(bucket)/ --acl=public-read --delete --cache-control="max-age=1576800000" --exclude "*.html"
	@aws --profile=default s3 sync build/ s3://$(bucket)/ --acl=public-read --delete --cache-control="max-age=0, no-cache" --exclude "*" --include "*.html"
