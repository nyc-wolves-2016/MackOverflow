Rails.application.routes.draw do
  root "questions#index"
  
  resources :questions
  resources :sessions, only: [:new, :create, :destroy]
  resources :users
end
