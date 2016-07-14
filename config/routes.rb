Rails.application.routes.draw do

  devise_for :users

  resources :movies do
    collection do
      get 'search'
    end
    resources :reviews, except: [:show, :index]
  end

 # root to: 'pages#home'
  root 'movies#index'

end
