Rails.application.routes.draw do
  get 'product_photos/index'
  get 'product_photos/show'
  get 'product_photos/create'
  get 'product_photos/new'
  get 'product_photos/destroy'
  get 'products/index'
  get 'products/show'
  get 'products/create'
  get 'products/new'
  get 'products/edit'
  get 'products/update'
  get 'products/destroy'
  devise_for :users
  root to: 'pages#home'
  resources :products, path: "/admin/products" do
    resources :product_photos, only: [:index, :show, :new, :create, :destroy]
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
