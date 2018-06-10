Rails.application.routes.draw do
    root 'pages#landing'
    get '/recipes/1', to: 'pages#recipes'
    get '/users/1', to: 'pages#users'
end
