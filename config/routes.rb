Rails.application.routes.draw do
  get 'welcome/index'

  resources :casinos do
    resources :products
  end

  root 'welcome#index'
end
