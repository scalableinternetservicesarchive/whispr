# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations',
  }
  
  devise_scope :user do
    get 'sign_in', to: 'users/sessions#new'
    get 'edit', to: 'users/registrations#edit'
    get 'sign_up', to: 'users/registrations#new'
    match 'medical' => 'users/registrations#medical', :via => [:get], :as => 'medical' 
    get '/users/sign_out' => 'devise/sessions#destroy'
    get 'forgot_password', to: 'users/passwords#new'
    get 'reset_password', to: 'users/passwords#edit'
    get 'view_patient', to: 'users/registrations#view_patient'
  end
  resources :users
  get 'patient', to: 'application#patient'
  root to: 'application#home'
end