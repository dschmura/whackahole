Rails.application.routes.draw do
  get '/privacy', to: 'pages#privacy'
  get '/contact', to: 'pages#contact'
  get '/about', to: 'pages#about'
  root to: 'pages#index'
  get 'pages/index'
  get 'pages/about'
  get 'pages/contact'
  get 'pages/privacy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources 'feedbacks', only: [:create]
end
