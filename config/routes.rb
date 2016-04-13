Rails.application.routes.draw do

  resources :links
  resources :users
  resources :votes

  root 'links#index'
end
