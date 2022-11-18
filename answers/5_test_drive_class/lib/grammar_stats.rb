class GrammarStats
  def initialize
  end

  def check(text) 
    # text is a string
    # Returns true or false depending on whether the text begins with a capital
    # letter and ends with a sentence-ending punctuation mark.
    @text = text 
    @text == ''
      fail 'This is not a valid input.' if text.empty?
      capital_letter = (text[0] == text[0].upcase)
      correct_punctuation = ([".", "?", "!"].include? text[-1])
      if capital_letter && correct_punctuation
        @total_text.push(true)
        true
      else 
        @total_text.push(false)
        false
      end 
  end

  def percentage_good
    # Returns as an integer the percentage of texts checked so far that passed
    # the check defined in the `check` method. The number 55 represents 55%.
    total_checks_count = @total_text.count
    good_checks = @total_text.count(true)
    (good_checks.to_f / total_checks_count.to_f * 100).to_i


    
    #percentage_good = (@total_text.split(' ') / @correct_text.to_i)
    #return percentage_good 
  end
end

text = GrammarStats.new
text.check("Hello, I'm Cecily.")
text.percentage_good


#diary_entry.reading_time(2)
#diary_entry.reading_chunk(2, 5)
#diary_entry.reading_chunk(2, 5)