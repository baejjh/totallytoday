Rails.application.routes.draw do
  root 'mains#index'

  get '/about'          => 'mains#about'
  get '/journey'        => 'mains#journey'
  get '/destination'    => 'mains#destination'
end
