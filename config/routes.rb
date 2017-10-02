Rails.application.routes.draw do
  root 'orders#index'
  devise_for :users

  resources :orders, except: [:new, :create]
  resources :restaurants

  resources :restaurants, only: [:index, :show] do
    resources :orders, only: [:index, :new, :create, :show]
  end

  resources :orders, only: [:show] do
    resources :items, only: [:create]
  end
end
