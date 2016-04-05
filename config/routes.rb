Rails.application.routes.draw do
  resources :posts
  root to: 'static#index'
  get '/home/testimonies', to: 'static#testimonies', as: 'public_testimonies'
  get '/home/show_testimony/:id', to: 'static#show_testimony', as: 'show_testimony'
  get '/home/videos', to: 'static#videos', as: 'public_videos'

  resources :age_groups
  resources :diagnosed_disorders
  resources :diagnoses
  resources :disorder_groups
  resources :disorders
  resources :expertises
  resources :genders
  
  resources :pacients
  get '/pacients/select/pacient/:id', to: 'pacients#select_pacient', as: 'select_pacient'
  delete '/pacients/deselect/pacient', to: 'pacients#deselect_pacient', as: 'deselect_pacient'

  resources :presented_testimonies
  resources :testimonies
  resources :videos

  get 'dashboard', to: 'dashboard#index', as: 'dashboard'
  
  devise_for :administrators, controllers: { sessions: "administrators/sessions", registrations: 'administrators/registrations' }
  devise_for :medics, controllers: { sessions: "medics/sessions", registrations: 'medics/registrations' }
  devise_for :users
end
