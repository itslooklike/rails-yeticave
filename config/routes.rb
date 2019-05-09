Rails.application.routes.draw do
  get 'welcome/index'

  get 'login', to: 'sessions#new', as: :login
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy', as: :logout

  resources :bets, :lots, :users

  root 'welcome#index'
end
