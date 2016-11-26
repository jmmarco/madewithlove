Rails.application.routes.draw do

  get "/meals/search" => "meals#index"
  
  resources :meals
  resources :orders#, only: [:new, :create, :show, :edit, :update]
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/' => 'application#index', :as => :index_path

  get "/login" => "auth#new"

  get "/oauth2callback" => "auth#callback"

  get "/logout" => "auth#clear"

  get "/success" => "auth#success"

  get "/users/:id" => "users#show"



end
