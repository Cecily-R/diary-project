class DiaryEntry
  def initialize(title, contents) # title, contents are strings
    @title = title
    @contents = contents
    @words_read = 0
  end

  def title
    # Returns the title as a string
    @title 
  end

  def contents
    # Returns the contents as a string
    @contents
  end

  def count_words
    # Returns the number of words in the contents as an integer
    @contents.split(" ").count
  end

  def reading_time(wpm)
    @contents.split(" ").count / wpm
    # wpm is an integer representing the number of words the
    # user can read per minute
    # Returns an integer representing an estimate of the reading time in minutes
    # for the contents at the given wpm.
  end

  def reading_chunk(wpm, minutes) 
    words = @contents.split(" ")
    words_to_read = wpm * minutes
    starting_point = @words_read
    @words_read += words_to_read
    if (words.length.to_f / starting_point) > 1
      words[starting_point, words_to_read].join(' ')
    else
      @words_read = 0
      words[0, words_to_read].join(' ')
    end  
  end
end 

#diary_entry = DiaryEntry.new("hello", "#{'one ' * 10}#{'two ' * 10}")
#diary_entry.reading_time(2)
#diary_entry.reading_chunk(2, 5)
#diary_entry.reading_chunk(2, 5)



    # `wpm` is an integer representing the number
    # of words the user can read per minute
    # `minutes` is an integer representing the
    # number of minutes the user has to read
    # Returns a string with a chunk of the contents that the user could read
    # in the given number of minutes.
    # If called again, `reading_chunk` should return the next chunk, skipping
    # what has already been read, until the contents is fully read.
    # The next call after that it should restart from the beginning.
