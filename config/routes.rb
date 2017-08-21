Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #user index
  get "/users" => "users#index"
  get "/users/:id" => "users#show"
  resources :trees, only: [:index, :create, :show]
  mount Attachinary::Engine => "/attachinary"


end
