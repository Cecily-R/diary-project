{{PROBLEM}} Class Design Recipe
1. Describe the Problem

As a user
So that I can keep track of my music listening
I want to add tracks I've listened to and see a list of them.


2. Design the Class Interface
Include the initializer and public methods with all parameters and return values.

# EXAMPLE

class ToDo
  def initialize # name is a string
    # Creates an empty array to store inputted tracks 
  end

  def add(track) 
    # Adds and stores stores inputted tracks
  end

  def list
    # Returns the list of tracks listened to 
    # Unless no tracks, in which case throws exception 'You currently have no tracks stored.'
  end

3. Create Examples as Tests
Make a list of examples of how the class will behave in different situations.

# EXAMPLE

# 1
track.add('')
track.list => 'You currently have no tracks stored.'

# 2
track.add('Blue Moon, Ella Fitzgerald')
track.list =>
'Blue Moon, Ella Fitzgerald'

# 3
track.add('Skater boy, Avril Lavign')
track.list =>
'Blue Moon, Ella Fitzgerald
Skater boy, Avril Lavign'

# 4
track.add('')
track.list =>
'Blue Moon, Ella Fitzgerald
Skater boy, Avril Lavign'

4. Implement the Behaviour
After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour.