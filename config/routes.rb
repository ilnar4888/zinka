Rails.application.routes.draw do
  root to: "pages#home"
  devise_for :users, controllers: { registrations: "users/registrations" }
  resources :sliders, only: [:create, :destroy]
  resources :maps, only: [:create]
  resources :works
  get :settings, to: "sliders#index"
end
