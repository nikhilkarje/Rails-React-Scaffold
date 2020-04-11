Rails.application.routes.draw do
  namespace :api do
    resources :users
  end
  get "/login", to: "sessions#new"
  post "/login", to: "sessions#create"
  get "/logout", to: "sessions#destroy"
  root "application#index"
end
