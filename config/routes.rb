Rails.application.routes.draw do
  # get 'article/index'
  root 'article#index'



  resources :article do
    resources :comments
    end
end
