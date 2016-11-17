Rails.application.routes.draw do
  devise_for :users
    root 'home#index'

    resources :doctors
    resources :patients
    resources :appointments, only: [:new, :create, :destroy]
end
