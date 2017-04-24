Rails.application.routes.draw do

  root 'series_new#index'
  resources :series_new
  get 'series', to: 'series#index'
  get 'series', to: 'series#index'
  # we only want to display a sign up page and create users
  resources :users, only: [:new, :create]

end
