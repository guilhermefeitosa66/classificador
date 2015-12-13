Rails.application.routes.draw do  
  resources :administrators
  resources :videos
  resources :diagnosed_disorders
  resources :diagnoses
  resources :presented_testimonies
  resources :testimonies
  resources :pacients
  resources :genders
  resources :medics
  resources :expertises
  resources :age_groups
  resources :disorders
  resources :disorder_groups
  root to: 'static#index'
end
