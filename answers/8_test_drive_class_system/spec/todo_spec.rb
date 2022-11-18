require 'todo'

describe Todo do 
  context '#task' do 
    it 'returns the todo as a string' do 
      todo_1 = Todo.new('Walk dog')
      expect(todo_1.task).to eq 'Walk dog'
    end
  end
  
  context '#mark_done!' do 
    it 'edits the todo to mark as completed' do
      todo_1 = Todo.new('Walk dog')
      expect(todo_1.mark_done!).to eq nil 
    end 
  end 

  context '#done?' do 
    it 'returns true when given a completed task' do 
      todo_1 = Todo.new('Walk dog')
      todo_1.mark_done!
      expect(todo_1.done?).to eq true 
    end 
  end 
end 