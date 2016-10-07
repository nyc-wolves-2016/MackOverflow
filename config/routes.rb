Rails.application.routes.draw do
  root "questions#index"

  resources :questions
  get '/login' => 'sessions#new'
  get '/logout' => 'sessions#delete'
  resources :sessions, only: [:new, :create, :destroy]

  get '/register' => 'users#new'
  resources :users
end
