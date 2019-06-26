Rails.application.routes.draw do

  resources :personal_checklists, only: [:index, :edit, :update]

  namespace :admin do
    get 'forms/set_published'
    root to: 'forms#index'
    resources :forms
  end

  resources :checklists, except: [:index, :edit, :update]
  devise_for :users
  root to: "checklists#index"
end
