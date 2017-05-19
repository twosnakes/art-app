Rails.application.routes.draw do
get '/' => 'pieces#index'
get '/pieces' => 'pieces#index'
get '/pieces/new' => 'pieces#new'
post '/pieces' => 'pieces#create'
get '/pieces/:id' => 'pieces#show'
get '/pieces/:id/edit' => 'pieces#edit'
patch '/pieces/:id' => 'pieces#update'
delete '/pieces/:id' => 'pieces#destroy'

end
