Rails.application.routes.draw do
  
  resources :topics do
    resources :posts, expect: [:index]
  end
  get 'about' => 'welcome#about'

  root to: 'welcome#index'
end
