Rails.application.routes.draw do
  devise_for :users
  root to: "prototypes#index"
  #8238:ルーティング
  resources :prototypes, only: [:new, :create, :show, :edit, :update, :destroy] do
    resources :comments, only: :create
  end
  resources :users, only: :show
end
