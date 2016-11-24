Rails.application.routes.draw do
  resources :meals
  resources :orders
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/' => 'application#index', :as => :index_path

  get "/login" => "auth#new"

  get "/oauth2callback" => "auth#callback"

  get "/logout" => "auth#clear"

  get "/success" => "auth#success"

end
