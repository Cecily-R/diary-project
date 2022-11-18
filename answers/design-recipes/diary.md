{{PROBLEM}} Multi-Class Planned Design Recipe

1. Describe the Problem

As a user
So that I can record my experiences
I want to keep a regular diary

As a user
So that I can reflect on my experiences
I want to read my past diary entries

As a user
So that I can reflect on my experiences in my busy day
I want to select diary entries to read based on how much time I have and my reading speed

As a user
So that I can keep track of my tasks
I want to keep a todo list along with my diary

As a user
So that I can keep track of my contacts
I want to see a list of all of the mobile phone numbers in all my diary entries

2. Design the Class System

Also design the interface of each class in more detail.

class DiaryEntry
  def initialize(title, contents)
    # Initializes diary entry title
    # Initializes diary entry contents 
  end

  def title
    # Returns diary entry title  
  end

  def contents
    # Returns diary entry contents
  end

  def count_words
    # Counts words in diary entry
    # Returns the count 

  def contact?
    # Boolean assigned if diary entry contains contacts(phone numbers) or not 
  end
end 

Class Todo
  def initialize(task)
    # Initializes the todo
  end   

  def todo
    # Returns todo
  end  
end 

Class Diary 
  def initialize
    # Intializes diary entry array
    # Initialize todo array
    # Initialize contacts array
  end 

  def all_diary_entries
    # Returns all diary entries 
  end 

  def diary_entry_based_on_reading_speed(wpm,minutes_to_read)
    # Returns diary entries to read based on how long the user has to read
  end 

  def todo_list 
    # Returns a list of all todos
  end 

  def contact
    # Returns a list of any phone numbers present in diary entries
  end 
end  

    
3. Create Examples as Integration Tests
Create examples of the classes being used together in different situations and combinations that reflect the ways in which the system will be used.

# EXAMPLE

# Returns all diary entries 
diary = Diary.new
diary_entry_1 = DiaryEntry.new("January 6th", "I called Laura on 07786542236")
diary_entry_2 = DiaryEntry.new("February 4th", "todo: bake a cake")
diary.add(diary_entry_1)
diary.add(diary_entry_2)
diary.all # => [diary_entry_1, diary_entry_2]

# Returns diary entries which can be read in the time given 
diary = Diary.new
diary_entry_1 = DiaryEntry.new("January 6th", "I called Laura on 07786542236")
diary_entry_2 = DiaryEntry.new("February 4th", "I baked a cake")
diary.add(diary_entry_1)
diary.add(diary_entry_2)
diary.diary_entry_based_on_reading_speed(10,10) # => [diary_entry_1, diary_entry_2]

# Returns Todo list 
diary = Diary.new
todo_1 = todo.new("Call Laura")
todo_2 = todo.new("Bake a cake")
diary.add(todo_1)
diary.add(todo_2)
diary.todo_list # => [todo_1, todo_2]

# Returns all phone numbers included in the todos
diary = Diary.new
diary_entry_1 = DiaryEntry.new("January 6th", "I called Laura on 07786542236")
diary_entry_2 = DiaryEntry.new("February 4th", "I baked a cake and called Paul on 07564823499")
diary.add(diary_entry_1)
diary.add(diary_entry_2)
diary.contacts # => ["07786542236", "07564823499"]

4. Create Examples as Unit Tests
Create examples, where appropriate, of the behaviour of each relevant class at a more granular level of detail.

# DIARYENTRY EXAMPLE

# Constructs a diary entry
diary_entry = DiaryEntry.new("January 6th", "I called Laura on 07786542236")

# Returns diary entry title
diary_entry.title # => "January 6th"

# Returns diary entry contents
diary_entry.contents # => "I called Laura on 07786542236"

# Returns word count of diary entry contents 

diary_entry.count_words # => 5

Encode each example as a test. You can add to the above list as you go.

# TODO EXAMPLES

# Returns todo list
todo = todo.new("Bake a cake")
todo.return_todo # => todo

5. Implement the Behaviour
After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour.