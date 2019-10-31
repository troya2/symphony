Rails.application.routes.draw do
  resources :room_messages
  resources :rooms
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  devise_for :users,
    path_names: { sign_in: 'login', sign_out: 'logout' },
    controllers: { confirmations: 'users/confirmations' }

  authenticated :user do
    root to: 'profiles#show'
  end
  root to: 'public#about', as: :public_landing_page

  resources :matchings
  resources :messages
  resources :nodes
  resources :reservations
  resource :profile
end
