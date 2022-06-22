Rails.application.routes.draw do
  resources :top_artistlists
  resources :top_tracklists
  resources :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

end
