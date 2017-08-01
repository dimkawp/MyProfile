class HomeController < ApplicationController
  def index
    @articles = Article.all
  end

  def admin

  end
end
