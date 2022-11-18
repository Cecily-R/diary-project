require 'todo_class'

RSpec.describe ToDo do 
  context 'if given an empty string' do 
    it 'fails' do
      todo = ToDo.new
      todo.add('')
      expect { todo.list }.to output("Your todo list is currently empty.\n").to_stdout
    end
  end  
 
  context '#add & #complete' do 
  todo = ToDo.new
      
    it 'it returns updated to do list when given two todos' do
      todo.add('Wash dog')
      todo.add('Clean kitchen')
      expect { todo.list }.to output("Wash dog\nClean kitchen\n").to_stdout
    end 
    
    it 'adds additional todo to the list when given' do 
      todo.add('Sort attic')
      expect { todo.list }.to output("Wash dog\nClean kitchen\nSort attic\n").to_stdout
    end 

    it 'deletes completed todosand returns the updated todo list' do
      todo.complete('Clean kitchen')
      expect { todo.list }.to output("Wash dog\nSort attic\n").to_stdout
    end 

    it 'deletes all completed todos and returns the empty todo list message' do
      todo.complete("Wash dog")
      todo.complete('Sort attic')
    expect { todo.list }.to output("Your todo list is currently empty.\n").to_stdout
    end 
  end  
end