Rails.application.routes.draw do
  resources :additems, only: [:index, :show, :new, :create, :edit, :update]
  resources :menus
  resources :menuitems
  resources :orderitems
  resources :todos
  resources :additems
  resources :billitems
  resources :usermain
  resources :orders
  resources :delete
  resources :ownerhome
  resources :orderreceived
  resources :users
  get "/" => "home#index"
  get "/" => "delete#destroy"
  patch "additems/:id", to: "additems#update"

  get "/new" => "users#new", as: :user_sessions
  get "/signin" => "sessions#new", as: :new_sessions
  post "/signin" => "sessions#create", as: :sessions
  delete "/signout" => "sessions#destroy", as: :destroy_session
end
