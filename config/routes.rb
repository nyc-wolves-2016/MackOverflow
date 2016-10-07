Rails.application.routes.draw do
  root "questions#index"

  resources :questions do
    resources :votes, only: [:create, :update, :destroy]
    resources :comments, only: [:create, :update, :destroy] do
      resources :votes, only: [:create, :update, :destroy]
    end
    resources :answers, only: [:create, :update, :destroy] do
      resources :votes, only: [:create, :update, :destroy]
      resources :comments, only: [:create, :update, :destroy] do
        resources :votes, only: [:create, :update, :destroy]
      end
    end
  end
  resources :sessions, only: [:new, :create, :destroy]
  resources :users
end
