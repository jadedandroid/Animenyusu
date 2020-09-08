Rails.application.routes.draw do
  resources :users
  resources :animes
  resources :tags, only: [:index, :show]
  resources :comments
  resources :posts
  resources :liked_animes
  
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # GET THE USER THE LOGIN FORM
  



  
  # get "/users", to: "users#index", as: "users" #users_path
  # get "/users/new", to: "users#new", as: "new_user"
  # post "/users", to: "users#create"
  # get "/users/:id", to: "users#show", as: "user" #user_path(id) or an instance user_path(@user)
  # get '/users/:id/edit', to: 'users#edit', as: 'edit_user'
  # patch '/users/:id', to: 'users#update'
  # delete 'users/:id', to: 'users#destroy'


  get '/sessions/new', to: 'sessions#new', as: 'new_login'
  post '/sessions/create', to: 'sessions#create', as: 'login'
  post "/login_form", to: "users#handle_login"
  delete "/logout", to: "users#logout", as: "logout"
end
