require "lib/custom_helpers"
helpers CustomHelpers

set :css_dir, 'stylesheets'
set :js_dir, 'javascripts'
set :images_dir, 'images'

def setup_blog(blog, name)
  blog.name = name
  blog.prefix = name
  blog.layout = "blog"
  blog.permalink = "{title}.html"
end

blogs = ['blog', 'portfolio', 'source']

blogs.each do |blog_name|
  activate :blog do |blog|
    setup_blog blog, blog_name
  end
end

activate :directory_indexes

configure :build do
  activate :minify_css
  activate :minify_javascript
end
