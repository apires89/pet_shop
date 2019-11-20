Rails.application.routes.draw do
  devise_for :users
  root to: 'pets#index'
  resources :pets, only: [:index,:show]
  resources :orders, only: [:show,:create] do
    resources :payments, only: :new
  end
  mount StripeEvent::Engine, at: '/stripe-webhooks'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
