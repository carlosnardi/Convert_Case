Rails.application.routes.draw do
  # get 'pages/home', as: 'home'
  get 'pages/about', as: 'about'
  get 'pages/contact', as: 'contact'
  get 'converter/index', as: 'index'

  match 'converter', to: 'converter#index', via: [:get, :post]

  root 'converter#index'
  
end
