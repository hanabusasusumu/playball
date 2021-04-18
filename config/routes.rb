Rails.application.routes.draw do
  devise_for :users
  get 'teams/index'
  root to: 'teams#index' 
  get 'teams/search'
  resources :teams, only: [:new, :create, :show, :edit, :update, :destroy] do
    resources :comments, only: :create
  end
end
