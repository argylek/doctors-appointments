Rails.application.routes.draw do
  get 'patients/index'
  get 'patients/new'
  get 'patients/edit'
  get 'patients/show'
  get 'appointments/index'
  get 'appointments/new'
  get 'appointments/edit'
  get 'appointments/show'
  get 'physicians/index'
  get 'physicians/new'
  get 'physicians/edit'
  get 'physicians/show'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
