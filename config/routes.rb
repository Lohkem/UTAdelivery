Rails.application.routes.draw do
  get 'welcome/index'

  resources :casinos

  root 'welcome#index'
end
