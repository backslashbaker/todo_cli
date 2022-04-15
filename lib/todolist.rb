class TodoList
    def initialize()
        @todolist = []
    end

    def add(todo) 
        @todolist << todo
    end

    def print_list(index=nil)
        @todolist.each_with_index do |todo, index| 
          puts "#{index}: #{todo}"
        end
    end


#    def delete(id) //TODO: allow users to delete a todo
#    end

end
