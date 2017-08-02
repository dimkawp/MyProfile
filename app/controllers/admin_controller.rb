class AdminController < ApplicationController
  def index
    @users = User.all
    @articles = Article.all
    @works = Work.all

  end

  def user_create
    user = User.create(user_params)
    if user.save
      redirect_to '/admin', :flash => { :error => 'New user created.' }
    else
      redirect_to '/admin', :flash => { :error => 'Error cannot created.' }
    end
  end
  def user_destroy
    user = User.find(params[:id])
    user.destroy
    redirect_to '/admin', :flash => { :error => 'Destroy user.' }
  end

  def work_create
    work = Work.create(work_params)
    if work.save
      redirect_to '/admin', :flash => { :error => 'New work page created.' }
    else
      redirect_to '/admin', :flash => { :error => 'Error cannot created.' }
    end
  end
  def work_destroy
    work = Work.find(params[:id])
    work.destroy
    redirect_to '/admin', :flash => { :error => 'Destroy Work Page.' }
  end

  def article_create
    article = Article.create(article_params)
    if article.save
      redirect_to '/admin', :flash => { :error => 'New article page created.' }
    else
      redirect_to '/admin', :flash => { :error => 'Error cannot created.' }
    end
  end
  def article_destroy
    article = Article.find(params[:id])
    article.destroy
    redirect_to '/admin', :flash => { :error => 'Destroy article Page.' }
  end

  private
  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:username, :email ,:role)
  end

  def work_params
    params.require(:work).permit(:title, :description, :image, :url, :user_id)
  end

  def article_params
    params.require(:article).permit(:title, :description, :image, :url, :user_id)
  end

end
