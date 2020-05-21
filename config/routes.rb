Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "tops#index"
  resources :tops, only: [:index, :create]
  get 'check', controller: 'tops', action: 'check'
  namespace :api do  
    resources :tops, only: :index, defaults: { format: 'json' }
  end
end
