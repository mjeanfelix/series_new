 Rails.application.routes.draw do

  root 'writers#index'
  resources :writers


  resources :writers, only: [:new, :create]
  get '/login', to: 'sessions#new'
end
