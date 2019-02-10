Rails.application.routes.draw do
  get 'games/index'
  get 'games/show'
  get 'users/index'
  get 'users/show'
  resources :pages
  resources :platforms, only: [:index, :show]
  resources :genres, only: [:index, :show]
  resources :users, only: [:index, :show]
  resources :games, only: [:index, :show]

  get 'static/:permalink', to: 'pages#static', as: 'static'

  root 'pages#show', {id: 3}
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
