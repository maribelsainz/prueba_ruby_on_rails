Rails.application.routes.draw do
  get 'todos', to: 'todos#index'
  get 'todos/new', as: 'new_todo'
  post 'todos', to: 'todos#create'
  get 'todos/list'
  get 'todos/:id', to: 'todos#show', as: 'todo'
  get 'todos/:id/edit', to: 'todos#edit', as: 'edit_todo'
  put 'todos/:id', to: 'todos#update'
  patch 'todos/:id', to: 'todos#update'
  delete 'todos/:id', to: 'todos#destroy'
  get 'todos/:id/complete', to: 'todos#complete', as: 'complete_todo'
  root 'todos#index'

end
