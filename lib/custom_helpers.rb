module CustomHelpers
  def active_nav_item(page, content, item)
    "class='active'" if page.data.category == item or content == item
  end

  def selected_nav_item(page, content, item)
    "selected" if page.data.category == item or content == item
  end

  def get_articles(blog)
    articles = blog.articles.select { |article| article.data.external_url.blank? }
  end

  def get_links(blog)
    articles = blog.articles.select { |article| article.data.external_url.present? }
  end
end
