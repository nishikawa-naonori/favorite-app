# routes.rb

Rails.application.routes.draw do
  devise_for :users
  root 'posts#index'
  resources :posts
  resources :likes, only: [:create,:destroy], as: 'create_destroy_like'
  #resources :likes, only: [:destroy]
  #post 'like/:id', to: 'likes#create', as: 'create_like'
  #post 'like/:id' => 'likes#create', as: 'create_like'

  #delete 'like/:id', to: 'likes#destroy', as: 'destroy_like'
  #delete 'like/:id' => 'likes#destroy', as: 'destroy_like'

end