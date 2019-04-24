Rails.application.routes.draw do
  get 'welcome/index'
  get 'login' => 'sessions#login', as: :login
  post 'login' => 'sessions#create'

  get 'users/new'
  post 'users/new' => 'users#create'

  get 'lots/new'
  get 'lots/:id' => 'lots#show', as: :lot
  post 'lots/new' => 'lots#create'

  root 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
