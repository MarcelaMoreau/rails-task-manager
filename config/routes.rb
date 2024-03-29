Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root 'tasks#list'
  get '/tasks', to: 'tasks#list'
  get 'tasks/new', to: 'tasks#new'
  get '/tasks/:id', to: 'tasks#singletask', as: 'task'
  post '/tasks', to: 'tasks#create'
  get  '/tasks/:id/edit', to: 'tasks#edit', as: :edit_task
  patch 'tasks/:id', to: 'tasks#update'
  delete 'tasks/:id', to: 'tasks#destroy'
end
