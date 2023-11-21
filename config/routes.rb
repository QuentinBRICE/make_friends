Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root to: 'pages#home'
  resources :advertisements, only: [:index, :new, :create,:show, :edit, :update] do
    resources :bookings, only: [:new, :create]
  end
    resources :bookings, only: [:destroy]
  # root "articles#index"
end
