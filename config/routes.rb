Rails.application.routes.draw do
  devise_for :users, path_names: {sign_in: "login", sign_up: "join"}
  get "/", to: "pages#home", as: "root"
  resources :listings
end
