class TodosController < ApplicationController
def index
  @todo = Todo.all
end

def new
  @todo = Todo.new
end

end
