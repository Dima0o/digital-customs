Rails.application.routes.draw do
  # get 'page/index'
  root 'welcome#index'

  get 'welcome/index'

  resources :page

end
