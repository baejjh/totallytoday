Rails.application.routes.draw do
  root 'mains#index'

  resources :users
  resources :sessions, :only => [:new, :create, :destroy] #only need 3 restful routes for Sessions
  resources :tally
  resources :category

  get "/login"            => 'users#new'
  get "/signin"           => 'sessions#new'
  get "/signout"          => 'sessions#destroy'

  get '/about'            => 'mains#about'
  get '/journey'          => 'mains#journey'
  get '/destination'      => 'mains#destination'
  get '/dashboard'		    => 'users#show'
  get '/editblogger/:id'  => 'users#edit'
end
