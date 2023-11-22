Rails.application.routes.draw do
  devise_for :users

  root 'pages#home'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  resources :advertisements, only: [:index, :new, :create,:show, :edit, :update] do
    resources :bookings, only: [:new, :create]
  end
end
