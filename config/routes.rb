Rails.application.routes.draw do
  resources :authors do
    resources :photos, except: [:create]
    post 'photos/new', to: 'photos#create'
    post 'photos/:id/edit', to: 'photos#update'
  end
  devise_for :users
  root 'homes#index'
end
