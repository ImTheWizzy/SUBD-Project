Rails.application.routes.draw do
  devise_for :users, controllers: {
    sessions: 'users/sessions'
  }
    root 'pages#landing'
    get '/recipes/1', to: 'pages#recipes'
    get '/users/1', to: 'pages#users'
end
