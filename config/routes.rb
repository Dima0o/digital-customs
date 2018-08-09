Rails.application.routes.draw do
  # get 'page/index'
  root 'page#index'



  resources :page do
    resources :comments
    end
end
