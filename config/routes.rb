Rails.application.routes.draw do
  root to: 'pages#home'
  get "/spots", to: "spots#index"
  get "/spots/:id", to: "spots#show", as: "spot"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
