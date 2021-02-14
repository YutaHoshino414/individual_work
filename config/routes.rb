Rails.application.routes.draw do
  
  root 'homes#index'
  devise_for :users
  devise_scope :user do
    post 'users/guest_sign_in', to: 'users/sessions#new_guest'
    # delete 'users/sign_out', to: 'devise/sessions#destroy'
  end
  resources :users, only: [:index, :show, :edit, :update, :destroy]
  resources :relationships, only: [:create, :destroy]

  resources :items do
    resources :comments
  end
end
