Rails.application.routes.draw do
  devise_for :users

  root 'pages#home'
  resources :users, only: [:show, :edit, :update]
  resources :advertisements, only: [:index, :show, :new, :create]
  resources :reservations, only: [:index, :show, :new, :create, :edit, :update, :destroy]
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root to: 'pages#home'
  # resources :advertisements, except: [:edit, :update] do
  #   resources :bookings, only: [:new, :create]
  # end
  # root "articles#index"
# end
