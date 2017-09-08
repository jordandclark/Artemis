Rails.application.routes.draw do

  resources :respondents do
    resources :responses
  end

  root :to => 'welcomes#index'

  resources :welcomes, only: [:index]

  resources :hiring_results, only: [:index]
  resources :diversity_results, only: [:index]

  devise_for :users
  resources :diversities
  resources :assessments



end
