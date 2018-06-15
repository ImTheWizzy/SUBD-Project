Rails.application.routes.draw do
  devise_for :users, controllers: {
    sessions: 'users/sessions'
  }
    resources :recipes, :pages

    root 'pages#landing'
    get '/recipes/:id', to: 'pages#recipes'

    get '/users/:id', to: 'pages#users'

    get '/upload', to: 'pages#new'
    post '/upload/success', to: 'pages#create'

    get '/recipes', to: 'recipes#new'
    post '/recipes/success', to: 'recipes#create'
end
