class TodosController < ApplicationController
def index
  @todo = Todo.all
end

def new
  @todo = Todo.new
end

def create
  @todo = Todo.new(todo_params)
    @todo.save
    redirect_to root_path
end

private
def todo_params
  params.require(:todo).permit(:description, :completed)
end

end

