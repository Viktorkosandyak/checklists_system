Rails.application.routes.draw do
  # get 'checklists/index'
  # get 'home/index'
  # get 'home/test'

  namespace :admin do
    get 'checklists/set_published'
    root to: 'checklists#index'
    resources :checklists
  end

  resources :checklists
  devise_for :users
  root to: "checklists#index"
end
