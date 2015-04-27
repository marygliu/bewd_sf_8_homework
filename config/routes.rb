Rails.application.routes.draw do
  devise_for :users
  root "authors#index"
  resources :articles
  resources :authors
  resources :publishers
end
