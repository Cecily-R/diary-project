{{PROBLEM}} Class Design Recipe
1. Describe the Problem

As a user
So that I can keep track of my tasks
I want a program that I can add todo tasks to and see a list of them.

As a user
So that I can focus on tasks to complete
I want to mark tasks as complete and have them disappear from the list.

2. Design the Class Interface
Include the initializer and public methods with all parameters and return values.

# EXAMPLE

class ToDo
  def initialize(todo) # name is a string
    # @todo = todo
  end

  def add (todo) 
    # Adds and stores todos 
  end

  def list
    # Returns the list of todos one line at a time 
    # Unless no to do's left, in which case throws exception 'You currently have no todo's.'
  end

  def complete(todo)
    # Deletes todos from the list
    # Returns updated todo list
end

3. Create Examples as Tests
Make a list of examples of how the class will behave in different situations.

# EXAMPLE

# 1
todo.add('Wash dog')
todo.list =>
'Wash dog
 Clean kitchen'

# 2
todo.add('Sort attic')

 Sort attic'

# 3
todo = ToDo
todo.complete('Clean kitchen')
todo.list =>
'Wash dog
 Sort attic'

# 4
todo = ToDo
todo.complete('Wash dog')
todo.complete('Sort Attic)
todo.list =>
'You currently have no todo's.

# 5
todo.list
=> 'You currently have no todo's.'

# 6
todo.add(' ')
todo.list =>
'You currently have no todo's.'

4. Implement the Behaviour
After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour.