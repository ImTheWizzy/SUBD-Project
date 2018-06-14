Rails.application.routes.draw do
  devise_for :users, controllers: {
    sessions: 'users/sessions'
  }
    root 'pages#landing'
    get '/recipes/:id', to: 'pages#recipes'
    get '/users/:id', to: 'pages#users'
end
