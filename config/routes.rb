Rails.application.routes.draw do


  resources :coins
  devise_for :users
  get '/wallet' => 'home#wallet'
  get 'transactions/new' => 'transactions#new'
  post 'transactions/' => 'transactions#create'
  get 'transactions/get_price', to: 'transactions#get_price'

  root to: "home#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
