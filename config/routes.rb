Rails.application.routes.draw do
  get 'pages/index'
  get 'pages/vista'
  get 'pages/crear'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root 'pages#index'
end
