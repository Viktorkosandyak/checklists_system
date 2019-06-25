Rails.application.routes.draw do

  namespace :admin do
    get 'forms/set_published'
    root to: 'forms#index'
    resources :forms
  end

  get 'checklists/my_checklist'
  resources :checklists
  devise_for :users
  root to: "checklists#index"
end
