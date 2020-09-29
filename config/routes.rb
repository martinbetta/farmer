Rails.application.routes.draw do
  mount StripeEvent::Engine, at: '/stripe-webhooks'
  devise_for :users
  root to: 'pages#home'

  resources :products, only: [:index, :show] do
    resources :order_items, only: [:create]
    resources :reviews, only: [:create]
  end

  resources :order_items, only: [:update, :destroy]

  resources :orders, only: [:create, :update, :show] do
    resources :payments, only: :new
  end
  
  get '/dashboard', to: 'pages#dashboard'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
