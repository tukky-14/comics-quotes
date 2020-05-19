Rails.application.routes.draw do
  devise_for :users
  root to: 'quotes#index'
  resources :quotes do
    resources :comments, only: [:create, :destroy]
  end
  resources :users, only: :show
end
