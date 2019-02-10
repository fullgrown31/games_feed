Rails.application.routes.draw do
  resources :platforms, only: [:index, :show]
  resources :genres, only: [:index, :show]

  root to: 'platforms#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
