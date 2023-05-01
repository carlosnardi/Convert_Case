Rails.application.routes.draw do
  # get 'pages/home', as: 'home'
  get 'pages/about', as: 'about'
  get 'pages/contact', as: 'contact'
  get 'converter/index', as: 'index'
  get 'pages/other_tools', as: 'other_tools'
  get 'temperatures/index', as: 'temp'

  match 'converter', to: 'converter#index', via: [:get, :post]

  root 'converter#index'
  
end
