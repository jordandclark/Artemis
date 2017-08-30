Rails.application.routes.draw do

  root :to => 'welcomes#index'


  resources :welcomes, only: [:index]
  resources :hiring_results, only: [:index]
  devise_for :users
  resources :diversities
  resources :assessments



end
