Rails.application.routes.draw do

  namespace :users_backoffice do
    get 'welcome/index'
  end

  namespace :site do
    get 'welcome/index'
  end

  namespace :admins_backoffice do
    get 'welcome/index'
    resources :admins
  end
  
  devise_for :admins
  devise_for :users
  
  get 'site/welcome/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: 'site/welcome#index'
end
