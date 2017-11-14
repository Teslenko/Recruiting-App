json.articles do
  json.array!(@article) do |article|
    json.name article.title+" "+article.position
    json.url article_path(article)
  end
end
