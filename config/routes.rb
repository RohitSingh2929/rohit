Rails.application.routes.draw do
  resources :orders
  resources :carts do
    member do 
      get :add_order, to: "orders#create"
      get :remove_from_cart, to: "carts#destroy"
    end
  end
  
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  
  devise_for :merchants
  
  root "products#index"
  resources :products
  resources :idproofs
  resources :categories
 
  
  resources :products do
    member do
      get :cart , to: 'carts#cart'
    end
    resources :productimages
  end
end

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # root to: "home#index"

  # Defines the root path route ("/")



