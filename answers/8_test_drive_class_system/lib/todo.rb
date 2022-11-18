class Todo
  def initialize(task) # task is a string
   @todo = { name: task, status: 'not_done' }
  end

  def task
    # Returns the task as a string
    @todo[:name]
  end

  def mark_done!
    # Marks the todo as done
    # Returns nothing
    @todo[:status] = 'done'
    nil
  end

  def done?
    # Returns true if the task is done
    # Otherwise, false
    if @todo[:status] == 'done'
      true
    else
      false
    end 
  end 
end






# class Todo

#   def initialize(task)
#     @task = task
#     @completed_tasks = []
#   end

#   def task
#     return @task
#   end

#   def mark_done!
#     @completed_tasks << @task

    
#   end

#   def done?

#   end
# end