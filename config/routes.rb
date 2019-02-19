Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # Background & Objectives
  # Let's build a To Do Manager with the basic CRUD features:
  # As a user, I can list tasks
  # As a user, I can view the details of a task
  # As a user, I can add a new task
  # As a user, I can edit a task (mark as completed / update title & details)
  # As a user, I can remove a task

  # list all tasks
  get 'tasks', to: 'tasks#index'

  # # Read the details of one Task
  get 'tasks/:id', to: 'tasks#show', as: :task

  # # create a Task 2 REQUESTS
  # get 'tasks/new', to: 'tasks#new'
  # post 'tasks', to: 'tasks#create'

  # # update a Task
  # get 'tasks/:id/edit', to: 'tasks#edit'
  # patch 'tasks/:id', to: 'tasks#update'

  # # delete a Task
  # delete 'tasks/:id', to: 'tasks#destroy'

end
