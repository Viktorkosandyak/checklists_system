Rails.application.routes.draw do

  namespace :admin do
    get 'forms/set_published'
    root to: 'forms#index'
    resources :forms
  end

  resources :checklists
  devise_for :users
  root to: "checklists#index"
end
