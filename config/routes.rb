Rails.application.routes.draw do
  get 'admin/index'

  get 'sessions/new'

  root 'home#index'
  get '/' 'home/index'

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'

  get '/admin', to: 'admin#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
