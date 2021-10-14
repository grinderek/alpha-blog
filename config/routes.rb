Rails.application.routes.draw do
  root 'pages#hello'
  get 'about', to: 'pages#about'

  resources :articles, only: [:show, :index]
end
