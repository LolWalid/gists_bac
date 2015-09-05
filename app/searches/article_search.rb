class ArticleSearch < Searchlight::Search
  search_on Article.all
  searches :filename
  def search_filename
    search.where('articles.filename like ?', "#{filename}%")
  end
end
