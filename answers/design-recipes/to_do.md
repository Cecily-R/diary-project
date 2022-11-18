{{PROBLEM}} Method Design Recipe
1. Describe the Problem

As a user
So that I can keep track of my tasks
I want to check if a text includes the string #TODO.

2. Design the Method Signature

# `includes_todo(todo)` gives true value if the string contains "#TODO" or false value if it does not.

potential_todo = includes_todo(todo)
todo: a string (e.g. "#TODO")
potential_todo: "true" 

# The method prints error message if given an empty string.


3. Create Examples as Tests
Make a list of examples of what the method will take and return.

# EXAMPLE

includes_todo("") => ["This is not a valid input."]
includes_todo("Wash car #TODO") => ["true"]
includes_todo("Buy dog food") => ["false"]
includes_todo("Food shop TODO") => ["false"]
includes_todo("Clean kitchen #TODO.") => ["true"]


4. Implement the Behaviour
After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour.