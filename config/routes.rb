Rails.application.routes.draw do
  get 'users/index'
  get 'users/new'
  root 'welcome#index'
  get '/about', to: 'welcome#about'

  resources :casinos do
    resources :products
  end

  resources :users

end
