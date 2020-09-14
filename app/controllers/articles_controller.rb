class ArticlesController < ApplicationController
  def index
    @articles = Article.order("created_at DESC")#記事一覧が新規投稿順に並ぶように記述します。
  end

  def new
  end
end
