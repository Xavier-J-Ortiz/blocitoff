Rails.application.routes.draw do
  resources :items
  get 'users/show'

  devise_for :users
  get 'welcome/index'

  get 'welcome/about'

  root 'users#show'

end
