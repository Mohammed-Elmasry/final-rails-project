Rails.application.routes.draw do
  get "cart/add_to_cart"
  resources :stores
  devise_for :buyers, path: "buyers", controllers: {
                        registerations: "buyers/registrations",
                        sessions: "buyers/sessions",
                        confirmation: "buyers/confirmations",
                        passwords: "buyers/passwords",
                        registerations: "buyers/registrations",
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

  resources :cart  
  get 'orders/confirm', to: 'orders#confirm'
  get 'orders/deliver', to: 'orders#deliver'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "products#index"
end
