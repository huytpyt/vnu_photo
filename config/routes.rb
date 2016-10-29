Rails.application.routes.draw do
  get 'errors/error'

  mount Ckeditor::Engine => '/ckeditor'
  resources :gallery, only: [:index, :show]
  devise_for :users
  root 'homes#index'
  scope '/admin' do
    resources :errors, only: [] do
      collection do
        get "", to: "errors#error", as: "error"
      end
    end
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
