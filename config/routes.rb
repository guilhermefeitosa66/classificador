Rails.application.routes.draw do
  root to: 'static#index'

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

  get 'dashboard', to: 'dashboard#index', as: 'dashboard'
  devise_for :administrators, controllers: { sessions: "administrators/sessions", registrations: 'administrators/registrations' }
end
