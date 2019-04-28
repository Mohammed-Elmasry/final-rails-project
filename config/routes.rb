Rails.application.routes.draw do
  devise_for :sellers, path: 'sellers'
  get 'welcome/index'
  devise_for :users, path: 'users'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'welcome#index'
end
