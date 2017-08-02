Rails.application.routes.draw do
  get 'admin/index'

  get 'sessions/new'

  root 'home#index'
  get '/' 'home/index'

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'

  get '/admin', to: 'admin#index'

  post '/users', to: 'admin#user_create'
  post '/works', to: 'admin#work_create'
  post '/articles', to: 'admin#article_create'

  delete 'delete/user/:id', to: 'admin#user_destroy'
  delete 'delete/work/:id', to: 'admin#work_destroy'
  delete 'delete/article/:id', to: 'admin#article_destroy'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
