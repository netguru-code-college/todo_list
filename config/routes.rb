Rails.application.routes.draw do
  get '/home', to: 'home#show'

  root 'lists#index'

  resources :lists
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
