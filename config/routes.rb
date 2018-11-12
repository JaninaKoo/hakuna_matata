Rails.application.routes.draw do
  resources :beaches, only: [:new, :create, :show, :index]

  get 'bookings', to: "bookings#index"
  post 'bookings', to: "bookings#create"
  delete 'bookings/:id', to: "bookings#destroy"

  get 'my_beaches', to: "beaches#my_beaches"

  devise_for :users

  root to: 'beaches#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
