Rails.application.routes.draw do
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

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'welcome#index'
end
