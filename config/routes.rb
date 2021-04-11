Rails.application.routes.draw do
  devise_for :users
  get 'teams/index'
  root to: 'teams#index' 
  resources :teams, only: [:new, :create, :show, :edit, :update]
end
