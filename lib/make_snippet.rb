def make_snippet(string)
  words = string.split(" ")
  if words.length > 4
    return "#{words[0..4].join(" ")}..."
  else
    return words.length
  end
end 

def count_words(string)
  words = string.split(" ")
  return words.length
end 