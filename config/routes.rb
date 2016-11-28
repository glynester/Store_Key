Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # root '/'

  get 'keys' => 'keys#index'

  get '/get'  => 'get#index'

  get '/set' => 'set#index'

  # resources :keys
end
