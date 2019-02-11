Rails.application.routes.draw do
  get 'static_pages/home'
  get 'static_pages/about'
  get 'static_pages/contact'
  resources :pages
  resources :platforms, only: [:index, :show]
  resources :genres, only: [:index, :show]
  resources :users, only: [:index, :show]
  resources :games, only: [:index, :show]

  get 'search_results', to:'search#results', as: 'search_results'

  get 'static/:permalink', to: 'pages#static', as: 'static'

  get 'static_pages/home'
  root 'static_pages#home'

  get 'static_pages/about'
  get 'static_pages/contact'
  # root 'pages#show', {id: 3}
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
