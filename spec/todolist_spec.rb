require_relative '../lib/todolist'

describe 'TodoList' do 
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
            
            expect(todolist.add(todo)).to eq(expected)
        end
    end

    describe 'deleting a todo item from todolist' do
        it 'deletes a todo item from list' do 

            todo = 'Get milk from shop'
            todolist = Todolist.new

            todolist.add(todo)

            expect(todolist.delete())
end  