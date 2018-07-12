Rails.application.routes.draw do

  #welcome controller, this handles static content
  #TODO: add an about page!
  root 'welcome#index'
  get '/about', to: 'welcome#about'

  resources :casinos do
    resources :products
  end

  #users
  resources :users
  get '/signup', to: 'users#new'

  #orders
  resources :orders, only: [:index, :show, :create]

  #deliverers
  get  '/deliverers',        to: 'welcome#deliverers'
  get  '/deliverers/signup', to: 'deliverer#new'
  post '/deliverers/signup', to: 'deliverer#create'

  #session
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'

  #cart_products
  post   '/cart',             to: 'cart_products#create'
  put    '/cart/:product_id', to: 'cart_products#update'
  delete '/cart/:product_id', to: 'cart_products#destroy'
end
