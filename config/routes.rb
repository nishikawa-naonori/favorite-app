# routes.rb

Rails.application.routes.draw do
  devise_for :users
  root 'posts#index'
  resources :posts
  post   'like/:id' => 'likes#create',  as: 'create_like'
  delete 'like/:id' => 'likes#destroy', as: 'destroy_like'


end