Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root to: 'users#index'
  root to: 'pages#home'
  resources :advertisements, except: [:show, :edit, :update] do
    resources :bookings, only: [:new, :create]
  end
  # root "articles#index"
end
