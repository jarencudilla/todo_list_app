Rails.application.routes.draw do
  root :to => "tasks#index"


  resources :categories 
  resources :tasks
  
end
