Rails.application.routes.draw do
  resources :mats
  resources :poses
  resources :users, only:[:show, :create]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  get "/logged_in", to: "users#show" #make useEffect in app to fetch here to see if logged in
  post "/signup", to: "users#create"
  post '/login', to:  'sessions#create' 
  delete '/logout', to:  'sessions#destroy'
  post '/pose/:id/fav', to: 'poses#fav', as: 'pose_fav'
  post '/mat/:id/fav', to: 'mats#fav', as: 'mat_fav'
end
