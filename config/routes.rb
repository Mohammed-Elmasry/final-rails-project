Rails.application.routes.draw do
  namespace :buyers do
    get 'buyer/show_products'
    post 'buyer/add_to_cart'
    get 'buyer/show_cart'
  end
  # get "cart/add_to_cart"
  resources :stores
  devise_for :buyers, path: "buyers", controllers: {
                        registerations: "buyers/registrations",
                        sessions: "buyers/sessions",
                        confirmation: "buyers/confirmations",
                        passwords: "buyers/passwords",
                      }
  devise_for :sellers, controllers: {
                         #   registrations: 'sellers/registrations',
                         sessions: "sellers/sessions",
                         confirmation: "sellers/confirmations",
                         passwords: "sellers/passwords",
                         registerations: "sellers/registrations",
                       }

  get "welcome/index"
  devise_for :users, path: "users", controllers: {
                       registerations: "users/registrations",
                       sessions: "users/sessions",
                       confirmation: "users/confirmations",
                       passwords: "users/passwords",
                      
                     }
  resources :categories
  resources :brands
  resources :products
  root 'products#index'
  resources :seller_objects
  resources :searches
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'products#index'
  post 'authenticate', to: 'authentication#authenticate'

  get 'order/confirm', to: 'order#confirm'
  get 'order/deliver', to: 'order#deliver'
  get 'order/showpending' , to: 'order#show_pending'
  put 'order/update_status/:id' , to: 'order#update_status' 
  resources :order

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "products#index"
end
