Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :products, only: [:index, :show]
  #resources :users, only: [:new, :create, :show]
  resources :orders, only: [:create]
  resources :order_items, only: [:create, :update, :destroy]

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
