Rails.application.routes.draw do
  root 'work#index'

  match 'work', to: 'work#index', via: 'get'
  match 'choose_theme', to: 'work#choose_theme', via: :get
  match 'display_theme', to: 'work#display_theme', via: :post

  # get 'work/index'
  # get 'work/choose_theme'
  # get 'work/display_theme'
  resources :values
  resources :images
  resources :themes
  resources :users
  # root 'main#index'
  get 'main/index'
  get 'main/help'
  get 'main/contacts'
  get 'main/about'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
