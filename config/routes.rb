Rails.application.routes.draw do
  get 'spots/index'
  get 'spots/new'
  get 'spots/create'
  root to: 'pages#home'
  get "/spots", to: "spots#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
