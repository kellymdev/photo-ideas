Rails.application.routes.draw do
  root 'categories#index'

  resources :categories, only: [:index]

  get :random, to: 'subjects#random'
end
