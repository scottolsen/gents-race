Rails.application.routes.draw do
  root to: 'teams#new'
  resources :teams
  resources :riders, only: :index
end
