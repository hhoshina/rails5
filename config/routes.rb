Rails.application.routes.draw do
#  resources :apachelogs
#  resources :access_log_tools
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  resources :photos	do
	post :upload, on: :collection
  end
  resources :map
  resources :geoips
  resources :twines
  resources :home
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
 
  root :to => 'home#index'

end
