Rails.application.routes.draw do
  root 'orders#index'
  devise_for :users

  resources :orders, except: [:new, :create]
  resources :restaurants
  resources :restaurants, only: [:index, :show] do
    resources :orders, only: [:index, :new, :create]
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
