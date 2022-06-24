Rails.application.routes.draw do
  resources :top_artistlists, except: [:update]
  resources :top_tracklists, except: [:update]
  resources :users, except: [:update]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get '/prev_top_artistlist/:id', to: 'top_artistlists#previous'
  get '/prev_top_tracklist/:id', to: 'top_tracklists#previous'
end
