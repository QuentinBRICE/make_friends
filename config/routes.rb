Rails.application.routes.draw do
  devise_for :users
  root 'advertisements#index'
  get :dashboard, to: "pages#dashboard"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Defines the root path route ("/")
  resources :advertisements, only: [:index, :new, :create,:show, :edit, :update, :destroy] do
    resources :bookings, only: [:new, :create]
  end

  resources :bookings, only: [:destroy, :update] do
    get :accept_booking, to: "bookings#accept"
  end
    # resources :bookings, only: [:destroy]
  # root "articles#index"
end
