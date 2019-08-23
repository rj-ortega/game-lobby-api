Rails.application.routes.draw do
  resources :users, except: [:destroy, :patch]
  resources :games
  resources :searches, only: :index
  resources :pc, only: :index
  resources :ps4, only: :index
  resources :xbox, only: :index
  resources :switch, only: :index
end
