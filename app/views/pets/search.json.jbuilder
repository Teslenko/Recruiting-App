json.articles do
  json.array!(@articles) do |article|
    json.name article.title
    json.url article_path(article)
  end
end