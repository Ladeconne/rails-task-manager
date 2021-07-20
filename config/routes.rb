Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # show all tasks
  get 'tasks', to: 'tasks#index', as: :tasks
  # Go to form for new task
  get 'tasks/new', to: 'tasks#new', as: :new_task
  # show a specific task
  get 'tasks/:id', to: 'tasks#show', as: :task
  # Create the tasks in the database on submit of new task form
  post 'tasks', to: 'tasks#create'
end
