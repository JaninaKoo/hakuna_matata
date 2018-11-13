Rails.application.routes.draw do
  root to: 'beaches#home'
  resources :beaches, only: [:new, :create, :show, :index] do
    resources :bookings, only: [:create]
  end
  get 'dashboard', to: "dashboard#show", as: 'dashboard'
  get 'bookings', to: "bookings#index"
  delete 'bookings/:id', to: "bookings#destroy"

  get 'my_beaches', to: "beaches#my_beaches"

  devise_for :users
  get 'design', to: "designs#index"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
