class TodosController < ApplicationController
def index
  @todo = Todo.order(:id)
end

end
