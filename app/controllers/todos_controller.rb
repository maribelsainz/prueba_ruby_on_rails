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

def show
  @todo = Todo.find(params[:id])
end

def edit
  @todo = Todo.find(params[:id])
end

def update
  @todo = Todo.find(params[:id])
  @todo.update(todo_params)
  redirect_to root_path, notice: 'El To Do a sido actualizado con éxito!'
end

def destroy
  @todo = Todo.find(params[:id])
  @todo.destroy
  redirect_to root_path, notice: 'El To Do ha sido eliminado con éxito!'
end

def complete
    @todo = Todo.find(params[:id])
    @todo.completed = true
    @todo.save
    redirect_to root_path
end

def list
  @todo = Todo.all
end


private
def todo_params
  params.require(:todo).permit(:description, :completed)
end

end

