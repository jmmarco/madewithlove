Rails.application.routes.draw do

  get "/meals/search" => "meals#search"

  get "/meals/category" => "meals#category"

  resources :meals

  resources :orders do
    resources :reviews, except: [:update, :destroy]
  end
  resources :reviews
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/' => 'home#index', as: :index

  get "/login/google" => "auth#google"

  post "/login/regular" => "auth#regular"

  get "/oauth2callback" => "auth#callback"

  get "/logout" => "auth#clear"

  get "/success" => "auth#success"

  get "/users/:id" => "users#show"

  get "/meals/:id/favorite" => "meals#favorite"

end
