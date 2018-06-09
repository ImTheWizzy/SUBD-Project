Rails.application.routes.draw do
    root 'pages#landing'
    get '/images/1', to: 'pages#images'
end
