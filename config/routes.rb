Rails.application.routes.draw do
	root 'event#index'
  get 'static_page/index'
  get 'static_page/secret'
  devise_for :users
  resources :users
  resources :event 
  resources :charges
  resources :users do
    resources :events
end
  resources :events do
    resources :attendance
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
