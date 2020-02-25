# frozen_string_literal: true

Rails.application.routes.draw do
  root 'physicians#index'
  resources :patients
  
  resources :physicians do
    resources :appointments, only: %i[index new create destroy edit]
  end
end
