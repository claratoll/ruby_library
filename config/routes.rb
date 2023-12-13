Rails.application.routes.draw do
  devise_for :users
  resources :books
  resources :user_libraries, only: [:index, :create, :update]

  get 'home/about'
  root "books#index"


  get "up" => "rails/health#show", as: :rails_health_check

end
