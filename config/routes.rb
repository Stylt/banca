Rails.application.routes.draw do
  devise_for :admins

	root 'dashboard#index'

	resources :profile, only: [:index, :update]


end
