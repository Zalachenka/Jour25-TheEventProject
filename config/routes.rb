Rails.application.routes.draw do
  get 'users/index'
  get 'users/show'
  get 'event/index'
	root 'static_page#index'
  get 'static_page/index'
  get 'static_page/secret'
  devise_for :users
  resources :event
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
