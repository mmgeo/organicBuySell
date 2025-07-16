Rails.application.routes.draw do
  root "items#index"
  resources :items, only: [:index, :new, :create]
  resources :farmers, only: [:new, :create, :show]
end