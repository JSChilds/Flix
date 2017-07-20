Rails.application.routes.draw do
 
  put "/users/:id", to: "movies#seen_movie", as: :seen_movie

  devise_for :users
  root to: "movies#index"


  resources :users
  resources :movies
  resources :reviews
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
