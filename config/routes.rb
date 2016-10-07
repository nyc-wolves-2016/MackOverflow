Rails.application.routes.draw do
  resources :questions
  resources :sessions, only: [:new, :create, :destroy]
  resources :users
  root "questions#index"
end
