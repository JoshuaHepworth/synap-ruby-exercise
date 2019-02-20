Rails.application.routes.draw do
  resources :organizations 
  resources :addresses
  resources :users
end
