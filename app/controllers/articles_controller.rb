class ArticlesController < ApplicationController

  before_action :load_user

  def index
    @articles = @user.articles.ordered.paginate(page: params[:page])
    respond_to do |format|
      format.html
      format.rss { render layout: false }
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
