# frozen_string_literal: true

require_relative '../lib/todolist'

describe 'TodoList'
describe 'creating a new Todolist' do
  it 'creates a new todo list' do
    expect(TodoList.new).to be_instance_of TodoList
  end
end

describe 'adding a new todo to todolist' do
  it 'adds a new todo item into the todo list' do
    todo = 'Get milk from shop'
    todolist = TodoList.new

    expected = ['Get milk from shop']

    expect(todolist.add_todo_item(todo)).to eq(expected)
  end
end

describe 'deleting a todo item from todolist' do
  it 'deletes one todo item from list' do
    todo = 'Get milk from shop'
    todolist = TodoList.new
    todolist.add_todo_item(todo)
    expect(todolist.delete_todo(0)).to eq []
  end

  it 'deletes the third todo item from list' do
    todo = 'Get milk'
    todo2 = 'Get bread'
    todo3 = 'Get coffee'

    todolist = TodoList.new

    todolist.add_todo_item(todo)
    todolist.add_todo_item(todo2)
    todolist.add_todo_item(todo3)

    expect(todolist.delete_todo(2)).to eq ['Get milk', 'Get bread']
  end

  it 'deletes all todo item from list' do
    todo = 'Get milk'
    todo2 = 'Get bread'
    todo3 = 'Get coffee'

    todolist = TodoList.new

    todolist.add_todo_item(todo)
    todolist.add_todo_item(todo2)
    todolist.add_todo_item(todo3)

    expect(todolist.delete_todo).to eq []
  end
end

describe 'printing todos to users from todolist' do
  it 'print first todo item from list' do
    todo = 'Get milk from shop'
    todolist = TodoList.new

    todolist.add_todo_item(todo)

    expect { todolist.print_list }.to output("0: Get milk from shop\n").to_stdout
  end

  it 'prints all todo items from list' do
    todo = 'Get milk'
    todo2 = 'Get bread'
    todo3 = 'Get coffee'

    todolist = TodoList.new

    todolist.add_todo_item(todo)
    todolist.add_todo_item(todo2)
    todolist.add_todo_item(todo3)

    expect { todolist.print_list }.to output("0: Get milk\n1: Get bread\n2: Get coffee\n").to_stdout
  end
end

#   //TODO: Test users ability to edit an item in an array

describe 'editing item in todo' do
  it "edits 'get milk' to 'get shampoo'" do
    todo = 'Get milk'
    todo2 = 'Get bread'
    todo3 = 'Get coffee'

    todolist = TodoList.new

    todolist.add_todo_item(todo)
    todolist.add_todo_item(todo2)
    todolist.add_todo_item(todo3)

    expect(todolist.edit_todo(0, 'Get shampoo')).to eq 'Get shampoo'
  end
end
