Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # get '/login', to: 'home#login'
  get '/users/sign_up', to: 'users#sign_up'
  post '/users/sign_up', to: 'users#create'
  get '/users/login', to: 'users#login'
  post '/users/login', to: 'users#sign_in'

  post '/tweets', to: 'tweets#create'

  get '/', to: 'home#index'
end
