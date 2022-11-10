def includes_todo(todo)
  fail "This is not a valid input." if todo.empty?
  potential_todo = todo.include? "#TODO"
end 