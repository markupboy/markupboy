require "lib/custom_helpers"
helpers CustomHelpers

set :css_dir, 'stylesheets'
set :js_dir, 'javascripts'
set :images_dir, 'images'

activate :blog do |blog|
  blog.permalink = "blog/view/{title}.html"
end


configure :build do
  activate :minify_css
  activate :minify_javascript
end
