Rails.application.routes.draw do
  # get 'checklists/index'
  # get 'home/index'
  # get 'home/test'
  
  namespace :admin do
    root to: 'checklists#index'
    resources :checklists
  end

  resources :checklists
  devise_for :users
  root to: "checklists#index"
end
