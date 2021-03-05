class ArticlesController < ApplicationController

  before_action :load_user

  def index
    @articles = @user.articles.ordered.paginate(page: params[:page], per_page: 10)
    respond_to do |format|
      format.html
      format.atom
    end
  end

  def show
    @article = @user.articles.friendly.find(params[:id])
  end

  private

  def load_user
    @user ||= User.find_by(username: request.subdomain)
    head :not_found unless @user
  end

end
