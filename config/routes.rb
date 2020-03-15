Rails.application.routes.draw do
  resources :reviews, only: [:index, :destroy]
  root 'books#index'
  resources :books do
    resources :reviews, except: [:index, :destroy]
  end
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
