Rails.application.routes.draw do
  devise_for :users
  root 'advertisements#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Defines the root path route ("/")
  resources :dashboards, only: [:index, :show, :edit, :destroy]
  resources :advertisements, only: [:index, :new, :create,:show, :edit, :update] do
    resources :bookings, only: [:index, :new, :create, :update]
  end
    # resources :bookings, only: [:destroy]
  # root "articles#index"
end
