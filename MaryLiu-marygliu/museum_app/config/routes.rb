Rails.application.routes.draw do
root 'paintings#index'
  resources :museums, only: [:index, :show, :new, :create, :update]
  resources :artists, only: [:index, :show, :new, :create, :update]
  resources :paintings, only: [:index, :show, :new, :create, :update]

  
end
