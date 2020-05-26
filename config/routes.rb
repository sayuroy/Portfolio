Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "tops#index"
  resources :tops, only: [:index, :create]
  get 'check', controller: 'tops', action: 'check'
  get 'tops/:name', controller: 'tops', action: 'show'
  namespace :api do  
    resources :tops, only: :index, defaults: { format: 'json' }
  end

  resources :memos, only: :index
end
