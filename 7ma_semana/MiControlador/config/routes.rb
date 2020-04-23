Rails.application.routes.draw do

  #  Todos los métodos que estan comentados, se reemplazarán con resources 'posts'
  # get 'posts/new'
  # post 'posts' => 'posts#create'
  # get 'posts/:id' => 'posts#show'
  # get 'posts/' => 'posts#index'

  # get "posts/:id/edit" => "posts#edit"
  # put "posts/:id" => "posts#update"

  resources "posts"
  resources :posts do
    resources :comments
  end
  root 'home#index'




end
