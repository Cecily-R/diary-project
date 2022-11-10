def grammar_check(sentence)
  fail "Not a sentence." if sentence.empty?
  first_character_upcase = sentence[0] == sentence[0].upcase
  last_character_correct_punctuation = [".", "!", "?"].include? sentence[-1]
  if first_character_upcase && last_character_correct_punctuation
    return true
  else 
    return false
  end
end

