Rails.application.routes.draw do

  get 'seller_entity/new'
  get 'seller_entity/create'
  devise_for :buyers, path: 'buyers', controllers: {sessions: 'buyers/sessions',
     confirmation: 'buyers/confirmations',
     passwords: 'buyers/passwords',
     registerations: 'buyers/registrations',
  }
  devise_for :sellers, path: 'sellers', controllers: {sessions: 'sellers/sessions',
     confirmation: 'sellers/confirmations',
     passwords: 'sellers/passwords',
     registerations: 'sellers/registrations',
  }

  get 'welcome/index'
  devise_for :users, path: 'users', controllers: {sessions: 'users/sessions',
    confirmation: 'users/confirmations',
    passwords: 'users/passwords',
    registerations: 'users/registrations',
 }
  resources :categories
  resources :brands
  resources :products
  #resources :seller_entities
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'welcome#index'
end