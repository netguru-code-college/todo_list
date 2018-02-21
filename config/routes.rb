Rails.application.routes.draw do
  devise_for :users
  root 'lists#index'

  resources :lists
  resources :users, only: [:show, :index, :update, :delete]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
