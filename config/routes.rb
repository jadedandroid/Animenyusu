Rails.application.routes.draw do
  resources :tags, only: [:index, :show]
  resources :comments
  resources :posts
  resources :liked_animes
  resources :animes
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
