Rails.application.routes.draw do
  resources :personal_checklists, only: %i[index edit update]

  namespace :admin do
    namespace :forms do
      get 'publish/publisheding'
    end
    root to: 'forms#index'
    resources :forms
  end

  resources :checklists, except: %i[edit update]
  devise_for :users
  root to: 'checklists#index'
end
