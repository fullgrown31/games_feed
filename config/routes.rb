Rails.application.routes.draw do
  resources :pages
  resources :platforms, only: [:index, :show]
  resources :genres, only: [:index, :show]

  get 'static/:permalink', to: 'pages#static', as: 'static'

  root to: 'platforms#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
