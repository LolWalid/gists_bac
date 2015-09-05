class UsersController < ApplicationController
  before_action :set_user, only: :articles

  def index
    @users = User.all
  end

  def articles
    @search  = ArticleSearch.new(search_params)
    @search_params = search_params
    @articles = @search.results.where(user: @user)
    render template: "articles/index"
  end

  private
    def set_user
      @user = User.find(params[:id])
    end

    def search_params
      (params[:article_search] || {})
    end
end
