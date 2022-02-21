Rails.application.routes.draw do
  devise_for :users

  root to: 'pages#home'

  resources :islands, only: %i[index new create destroy show] do
    resources :bookings, only: %i[new create]
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
