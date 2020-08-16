Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get "/spots", to: "spots#index"
  get "spots/new", to: "spots#new"
  post "/spots", to: "spots#create"
  get "/spots/:id", to: "spots#show", as: "spot"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
