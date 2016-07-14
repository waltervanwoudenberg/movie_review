Rails.application.routes.draw do
  devise_for :users
  resources :movies
 # root to: 'pages#home'
  root 'movies#index'
end
