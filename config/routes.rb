Rails.application.routes.draw do

  root 'homes#index'
  devise_for :users, controllers: { registrations: 'users/registrations' }

  devise_scope :user do
    post 'users/guest_sign_in', to: 'users/sessions#new_guest'
    # delete 'users/sign_out', to: 'devise/sessions#destroy'
  end
  resources :users, only: [:index, :show, :edit, :update, :destroy] do
    collection do
      get 'search'
    end
    member do
      get 'bought_record'
    end
  end

  resources :relationships, only: [:create, :destroy]

  resources :items do
    resources :comments
    member do 
      get :purchase
      get :pay
      patch :pay
    end
  end
  resources :categories, only: [:show]
  resources :favorites, only: [:create, :destroy]
  resources :profiles, only: [ :edit, :update]
end
