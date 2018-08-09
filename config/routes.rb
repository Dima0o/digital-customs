Rails.application.routes.draw do
  # get 'article/index'
  root 'articles#index'



  resources :articles do
    resources :comments
    end
end
