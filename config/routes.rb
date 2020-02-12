Rails.application.routes.draw do

  resources :restaurants
  resources :restaurants do
    resources :reviews, only: [:new, :create]
  end
end
