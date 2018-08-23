Rails.application.routes.draw do
  resources :emails
  root 'email#index'
end
