Rails.application.routes.draw do
  # get 'page/index'
  root 'welcome#index'



  resources :page

end
