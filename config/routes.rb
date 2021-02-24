Rails.application.routes.draw do
  devise_for :users
  
  root to: 'pets#home'

  resources :shelters, only: :show
  resources :pets
  
  resources :reservations, only: [:index] do
    resources :pet_reviews, only: [:new, :create]
    resources :shelter_reviews, only: [:new, :create]
  end
end
