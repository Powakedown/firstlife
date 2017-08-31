Rails.application.routes.draw do
  root to: 'pages#home'

  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :users, only: [:index, :show] do
    resources :trees, only: [:show]
  end

  resources :skills, only: [] do
    resources :user_skills, only: [:create, :destroy], shallow: true
  end

  resources :trees, only: [:index] do
    resources :user_trees, only: [:create, :destroy], shallow: true
  end

  namespace :my do
    resources :trees, only: :show
  end

  mount Attachinary::Engine => "/attachinary"
end
