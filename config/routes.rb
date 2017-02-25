Rails.application.routes.draw do
  resources :teams
  resources :riders, only: :index
end
