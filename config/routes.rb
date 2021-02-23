Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :pets, only: %w[index show]
  resources :shelters, only: %w[show] do
    resources :pets, only: %w[new edit update destroy update]
  end
  resources :pet_reviews, only: %w[new create]
  resources :dashboard, only: %w[index]

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
