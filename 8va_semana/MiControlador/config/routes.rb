Rails.application.routes.draw do

  get 'sessions/new'
  resources :users
  resources :books
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

  # Muestra la vista de registro de usuario
  get 'signup' => 'users#new'

  # Muestra la vista de inicio de sesión
  get 'login' => 'sessions#new'

  # Recibe los datos enviados desde el formulario de login
  post 'login' => 'sessions#create'

  # Recibe los parámetros para eliminar una sesión
  delete 'logout' => 'sessions#destroy'


end
