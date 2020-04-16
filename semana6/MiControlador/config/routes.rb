Rails.application.routes.draw do
  get 'home/index'
  root 'home#index'

  get 'posts/new'
  post 'posts' => 'posts#create'
  get 'posts/:id' => 'posts#show'
  get 'posts/' => 'posts#index'
end
