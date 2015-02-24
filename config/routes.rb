Rails.application.routes.draw do
    root 'mains#index'
    
    resources :users
    resources :sessions, :only => [:new, :create, :destroy] #only need 3 restful routes for sessions
    resources :tally
    resources :category
    resources :status, :only => [:create]

    #visitor.html.erb
    get '/about'            => 'mains#about'
    get '/journey'          => 'mains#journey'
    get '/destination'      => 'mains#destination'


    #blogger.html.erb
    get '/dashboard'        => 'users#show'

    #blogger privileges
    get "/login"            => 'users#new'
    get "/signin"           => 'sessions#new'
    get "/signout"          => 'sessions#destroy'
end
