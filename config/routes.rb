Rails.application.routes.draw do
  get 'transactions/new'

  get 'transactions/create'

  resources :coins
  devise_for :users
  get '/wallet' => 'home#wallet'

  root to: "home#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
