Rails.application.routes.draw do

  get '/categories' => 'categories#index', as: 'categories'
  get '/categories/new' => 'categories#new', as: 'new_category'
  post '/categories' => 'categories#create', as: 'create_category'
  get '/categories/:id' => 'categories#show', as: 'show_category'
  get '/categories/:id/edit' => 'categories#edit', as: 'edit_category'
  put '/categories/:id' => 'categories#update', as: 'update_category'
  delete '/categories/:id/delete' => 'categories#delete', as: 'delete_category' 
end
