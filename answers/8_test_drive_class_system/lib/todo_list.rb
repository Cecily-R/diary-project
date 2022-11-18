class TodoList
  def initialize
    @todo_list = []
    @completed_todos = []
  end

  def add(todo) 
    @todo_list << todo
  end

  def incomplete
    @todo_list.map do |todo|
      if !todo.done?
        todo
      end
    end.compact
  end

  def complete
    @todo_list.map do |todo|
      if todo.done?
        todo
      end 
    end.compact
  end

  def give_up!
    # Marks all todos as complete
    @todo_list.map do |todo|
      if !todo.done?
        todo.mark_done!
      end
    end   
  end
end 
