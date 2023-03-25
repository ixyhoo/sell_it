Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
get "ping" => "application#ping"
  # Defines the root path route ("/")
  # root "articles#index"
  resources :classifieds, only: [:show, :index]
end
