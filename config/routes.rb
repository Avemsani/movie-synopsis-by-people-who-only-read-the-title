Rails.application.routes.draw do
  get '/movie/:id' => 'application#show'
  get '/new_movie' => 'application#new'
  get '/add_movie' => 'application#add'
  get '/movie/:id/edit' => 'application#edit'
  get '/movie/:id/update_movie' => 'application#update'
  get '/movie/:id/delete' => 'application#delete'
  get '/movie' => 'application#index'
end
