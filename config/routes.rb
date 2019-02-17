Rails.application.routes.draw do
resources :people, only: [:show, :index]
resources :organization, only: [:show, :index]
end
