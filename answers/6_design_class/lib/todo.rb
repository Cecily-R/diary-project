class ToDo
  def initialize
    @todo_list = []
  end 

  def add(todo)
    @todo_list << todo
  end 

  def list
    if @todo_list.empty? || @todo_list.all? { |todo| todo.empty? }
      puts 'Your todo list is currently empty.'
    else
      puts @todo_list
    end
  end

  def complete(todo)
   @todo_list.delete(todo)
   puts @todo_list
  end 
end