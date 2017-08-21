Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/users/:id' => 'users#show'
  get '/users/' => 'users#index'
  resources :tree, only: [:index, :create, :show]
end
