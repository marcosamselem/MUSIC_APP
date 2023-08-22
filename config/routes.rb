Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"

  resources :instruments, only: [:index, :show, :new, :create, :destroy, :edit, :update] do
    resources :bookings, only: [:create, :new]
  end
  resources :bookings, only: [] do
    member do
      get :confirmation
    end
    end
end
