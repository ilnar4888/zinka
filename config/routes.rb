Rails.application.routes.draw do
  root to: "pages#home"
  devise_for :users, controllers: { registrations: "users/registrations" }
  resources :sliders, only: [:create, :destroy]
  resources :maps, only: [:create]
  resources :teams, only: [:create, :show, :edit, :update]
  resources :works
  get :settings, to: "sliders#index"
  get :our_team, to: "teams#our_team"
end
