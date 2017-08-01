class AdminController < ApplicationController
  def index
    @users = User.all
    @articles = Article.all
    @works = Work.all
  end
end
