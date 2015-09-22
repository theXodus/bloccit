Rails.application.routes.draw do
  
  resources :topics do
    resources :posts, expect: [:index]
  end
  
  resources :users, only: [:new, :create] 
  post 'users/confirm' => 'users#confirm'
  
  get 'about' => 'welcome#about'
  
  root to: 'welcome#index'
end
