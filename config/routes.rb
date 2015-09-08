Rails.application.routes.draw do

  resources :topics do
    resources :posts, expect: [:index]
    resources :sponsored_posts, expect: [:index]
  end
  get 'about' => 'welcome#about'

  root to: 'welcome#index'
end
