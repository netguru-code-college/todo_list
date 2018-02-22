Rails.application.routes.draw do
  resources :tasks
  get '/home', to: 'home#show'
  devise_for :users
  root 'lists#index'

  resources :lists
  resources :users, only: [:show, :index, :edit, :update, :delete]

  get '/sth', to: Proc.new { [200, {}, ['ok']] }

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
