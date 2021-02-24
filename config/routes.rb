Rails.application.routes.draw do
  get 'reservations/new'
  get 'reservations/create'
  devise_for :users
  
  root to: 'pets#home'

  resources :shelters, only: :show do
    resources :pets, only: [:new, :create]
  end

  resources :pets, except: [:new, :create] do
    resources :reservations, only: [:new, :create]
  end
  
  resources :reservations, only: [:index] do
    resources :pet_reviews, only: [:new, :create]
    resources :shelter_reviews, only: [:new, :create]
  end

end
