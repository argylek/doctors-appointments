# frozen_string_literal: true

Rails.application.routes.draw do
  root 'physicians#index'
  resources :patients
  resources :physicians
end
