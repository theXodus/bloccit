Rails.application.routes.draw do
  
  resources :topics do
    resources :posts, expect: [:index]
  end
  
  resources :users, only: [:new, :create]
  
  resources :sessions, only: [:new, :create, :destroy]
  get 'about' => 'welcome#about'

  root to: 'welcome#index'
end
