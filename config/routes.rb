Rails.application.routes.draw do

  devise_for :users

  get 'persons/profile'
  # get 'article/index'

  post 'check_nickname', to: 'static#check_nickname'

  get 'persons/profile', as: 'user_root'

  resources :articles do
    resources :comments
    resources :ratings, only: [ :new, :create ]
  end
  root 'articles#index'
end
