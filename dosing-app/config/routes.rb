Rails.application.routes.draw do
  resources :allergies
  resources :blood_tests
  resources :doctors
  resources :patients
  resources :clinics
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
