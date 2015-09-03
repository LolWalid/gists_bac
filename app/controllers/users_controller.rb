class UsersController < ApplicationController
  before_action :set_user, only: :articles

  def index
    @users = User.all
  end

  def articles
    @articles = @user.articles
    render template: "articles/index"
  end

  private
  def set_user
    @user = User.find(params[:id])
  end
end
