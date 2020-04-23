Rails.application.routes.draw do
  root 'home#index'
  resources :klasses
  resources :tutors
  resources :students
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
