Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # list all tasks (read)
  get '/tasks', to: 'tasks#index', as: :tasks
  # add a new task (create)
  # form
  get '/tasks/new', to: 'tasks#new', as: :new_task
  # where to send the form
  post '/tasks', to: 'tasks#create'

  # view details of a task (one task)
  get '/tasks/:id', to: 'tasks#show', as: :task

  # edit a task (mark as completed/update title & details)
  get '/tasks/:id/edit', to: 'tasks#edit', as: :edit_task
  # send the form
  patch '/tasks/:id', to: 'tasks#update'
  # remove a task
  delete '/tasks/:id', to: 'tasks#destroy'
end
