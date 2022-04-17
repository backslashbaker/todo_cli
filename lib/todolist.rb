# frozen_string_literal: true

# Manages the CRUD elements of the todo list
class TodoList
  attr_accessor :todolist

  def initialize
    @todolist = []
  end

  def add_todo_item(todo)
    @todolist << todo
  end

  def print_list
    @todolist.each_with_index do |todo, index|
      puts "#{index}: #{todo}"
    end
  end

  def delete_todo(index = nil)
    if index
      @todolist.delete_at(index)
    else
      @todolist.clear
    end
    @todolist
  end

  def edit_todo(index, todo)
    @todolist[index] = todo
  end
end
