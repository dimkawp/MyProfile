class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by email: params[:user][:email]
    @users = User.all
    @articles = Article.all
    @works = Work.all
    if user
      if user.email == params[:user][:email] && user.password == params[:user][:password]
        session[:user_id] = user.id
        render 'admin/index'
      end
    else
      redirect_to '/login', :flash => { :error => 'Bad email or password.' }

    end
  end

  def destroy
    session[:user_id] = nil
    render 'new'
  end
end
