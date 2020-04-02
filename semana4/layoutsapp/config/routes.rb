Rails.application.routes.draw do
  resources :alumnos
  # get 'static/about'
  get 'about', controller: :static, action: :about, alias: 'about'

  # get 'static/services'
  get 'servicios', controller: :static, action: :services, alias: 'services'

  # get 'static/faq'
  get 'faq', controller: :static, action: :faq, alias: 'faq'

  # get 'static/contact'
  get 'contact', controller: :static, action: :contact, alias: 'contact'

  post 'static/mimetodo'

  get 'static/mypage'

  # get 'home/index'
  root 'home#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
