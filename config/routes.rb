Rails.application.routes.draw do
  get 'welcome/index'
  get 'login', to: 'sessions#new', as: :login
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy', as: :logout

  get 'users/new'
  post 'users/new', to: 'users#create'

  get 'lots/new'
  get 'lots/:id', to: 'lots#show', as: :lot
  post 'lots/new', to: 'lots#create'

  post 'bets', to: 'bets#create'

  root 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
