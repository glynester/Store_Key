Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root :to => redirect('/keys')
  get 'keys' => 'keys#index'
  get 'info' => 'info#how_to_add_a_key'
  get '/get'  => 'get#get_key'
  get '/set' => 'set#set_key'

end
