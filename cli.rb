# frozen_string_literal: true

require_relative './lib/todo'
require_relative './lib/todolist'

class Cli
  attr_accessor :todo, :todolist

  def initialize
    @todolist = TodoList.new
  end

  def get_todo_item
    @user_todo_item = Todo.new(gets.chomp)
  end

  def increment_todo_list(todo_item)
    @todolist.add_todo_item(todo_item)
  end

  def print_todolist
    @todolist.print_list
  end
end

cli = Cli.new
todo = Todo.new('test')
cli.increment_todo_list(todo.todo_item)
cli.todolist.print_list
