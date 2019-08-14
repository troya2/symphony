Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'profile#show'

  resources :matchings
  resources :messages
  resources :nodes
  resources :reservations
  resources :profile

end
