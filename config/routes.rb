Rails.application.routes.draw do
  get 'post/show'

  resources :gallery, only: [:index, :show]
  devise_for :users
  root 'homes#index'
  scope '/admin' do
    resources :posts
    resources :authors do
      resources :photos, except: [:create]
      post 'photos/new', to: 'photos#create'
      post 'photos/:id/edit', to: 'photos#update'
    end
  end
  get 'admin', to: "authors#index"
  resources :post, only: [] do
    collection do
      get ":friend_url", to: "post#show", as: "post_show"
    end
  end
end
