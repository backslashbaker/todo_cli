# frozen_string_literal: true

require_relative "../lib/todo"

describe "Todo" do
  it 'returns "get milk" when passed "get milk" todo' do
    todo = Todo.new("get milk")
    expect(todo.todo_item).to eq "get milk"
  end
end
