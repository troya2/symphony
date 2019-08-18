Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  authenticated :user do
    root to: 'profile#show'
  end
  root to: 'public#about', as: :public_landing_page

  resources :matchings
  resources :messages
  resources :nodes
  resources :reservations
  resources :profile

end
