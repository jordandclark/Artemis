Rails.application.routes.draw do

  root :to => 'welcomes#index'
  resources :welcomes, only: [:index]

  # Devise
  devise_for :users

  # Hiring Quiz
  resources :assessments, except: [:new]
  resources :hiring_results, only: [:index]
  get '/quiz_intro', to: 'assessments#intro'
  get '/hiring_quiz', to: 'assessments#new'

  resources :respondents do
    resources :responses
  end

  # D & I assessments
  resources :diversity_results, only: [:index]
  resources :diversities, except: [:new]
  get '/diversity_intro', to: 'diversities#intro'
  get '/diversity_assessment', to: 'diversities#new'

end
