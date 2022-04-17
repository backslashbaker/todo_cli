# frozen_string_literal: true

# create todo item for list
class Todo
  attr_accessor :todo_item

  def initialize(todo_item)
    @todo_item = todo_item
  end
end
