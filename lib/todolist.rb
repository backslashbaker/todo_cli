class TodoList
  attr_reader :todlist

  def initialize()
    @todolist = []
  end

  def add(todo)
    @todolist << todo
  end

  def print_list(index = nil)
    @todolist.each_with_index do |todo, index|
      puts "#{index}: #{todo}"
    end
  end

  def delete_todo(index = nil)
    if index
      @todolist.delete_at(index)
    else
      @todolist.clear()
    end
    @todolist
  end

  def edit_todo(index, todo)
    @todolist[index] = todo
  end
end
