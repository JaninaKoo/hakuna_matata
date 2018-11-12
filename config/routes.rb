Rails.application.routes.draw do
  get 'beaches/index'
  get 'beaches/new'
  get 'beaches/create'
  get 'beaches/show'
  get 'beaches/destroy'
  get 'bookings/index'
  get 'bookings/create'
  get 'bookings/show'
  get 'bookings/destroy'
  devise_for :users
  root to: 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
