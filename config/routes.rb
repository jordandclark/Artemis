Rails.application.routes.draw do
  resources :admins, only: [:index]
  devise_for :users
  resources :diversities
  resources :assessments



end
