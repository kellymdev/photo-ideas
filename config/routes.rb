Rails.application.routes.draw do
  root 'categories#index'

  resources :categories, only: [:index, :show] do
    get :random, to: 'subjects#random'
  end
end
