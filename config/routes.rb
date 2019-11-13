# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations',
    passwords: 'users/passwords',
  }
  root to: 'application#home'
  
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

  # Lets the user access lists of following/followers
  resources :users do
    member do
      get :following, :followers
    end
  end

  resources :relationships,       only: [:create, :destroy]
  resources :users
  get 'patient', to: 'application#patient'
  get 'profile', to: 'application#profile'
  get 'profile/medical', to: 'application#profile'
  get 'profile/providers', to: 'application#profile'
end