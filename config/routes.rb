Rails.application.routes.draw do  
  resources :administrators
  resources :age_groups
  resources :diagnosed_disorders
  resources :diagnoses
  resources :disorder_groups
  resources :disorders
  resources :expertises
  resources :genders
  resources :medics
  resources :pacients
  resources :presented_testimonies
  resources :testimonies
  resources :videos
  root to: 'static#index'
end
