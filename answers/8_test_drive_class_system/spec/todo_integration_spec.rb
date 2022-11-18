require 'todo'
require 'todo_list'

describe 'todo_integration' do
  task_1 = Todo.new('Walk dog')
  task_2 = Todo.new('Clean bathroom')
  task_3 = Todo.new('Hoover kitchen')

  context 'when we enter a todo' do 
    it 'adds it to the todo list' do
      todo_list = TodoList.new
      todo_list.add(task_1)
      expect(todo_list.incomplete).to eq [task_1]
    end 
  end 

  context '#incomplete' do 
    it 'returns a list of incompleted todos' do
      todo_list = TodoList.new
      todo_list.add(task_1)
      task_2.mark_done!
      todo_list.add(task_2)
      expect(todo_list.incomplete).to eq [task_1]
    end 
  end 

  context '#complete' do 
    it 'returns a list of completed todos' do 
      todo_list = TodoList.new
      todo_list.add(task_1)
      task_2.mark_done!
      todo_list.add(task_2)
      expect(todo_list.complete).to eq [task_2]
    end  
  end 

  context '#give_up!' do
    it 'marks all remaining incomplete todos as completed' do 
      todo_list = TodoList.new
      todo_list.add(task_1)
      todo_list.add(task_2)
      todo_list.add(task_3)
      task_2.mark_done!
      todo_list.give_up!
      expect(todo_list.complete).to eq [task_1, task_2, task_3]
    end 
  end 
end 