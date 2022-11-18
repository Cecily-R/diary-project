require 'diary_entry'

RSpec.describe DiaryEntry do 
  title = 'Great Expectations'
  contents = "#{"one " * 10}#{"two " * 10}"

  context "#title" do 
    it "returns the title" do
      diary_entry = DiaryEntry.new(title, contents)
      expect(diary_entry.title).to eq title
    end
  end
  
  context "#contents" do 
    it "returns the contents" do
      diary_entry = DiaryEntry.new(title, contents)
      expect(diary_entry.contents).to eq contents 
    end
  end 
  
  context "#count_words" do 
    it "counts and returns the number of words in contents" do 
      diary_entry = DiaryEntry.new(title, contents)
      expect(diary_entry.count_words).to eq 20
    end 
  end 

  context "#reading_time" do
    it "calculates and returns how many minutes it would take to read contents" do 
      diary_entry = DiaryEntry.new(title, contents)
      expect(diary_entry.reading_time(2)).to eq 10
    end 
  end 

  context "#reading chunk" do
    it "returns the section of the string that can be read in a minute" do
      diary_entry = DiaryEntry.new(title, contents)
      expect(diary_entry.reading_chunk(10, 1)).to eq "#{('one ' * 9)}one"
    end
  end

  context "#reading chunk called first of two times" do
    it "returns first chunk of text" do
      diary_entry = DiaryEntry.new(title, contents)
      expect(diary_entry.reading_chunk(2, 5)).to eq "#{('one ' * 9)}one"
    end
  end

  context "#reading chunk called twice" do
    it "returns next chunk of text" do
      diary_entry = DiaryEntry.new(title, contents)
      diary_entry.reading_chunk(2, 5)
      expect(diary_entry.reading_chunk(2, 5)).to eq "#{('two ' * 9)}two"
    end
  end

  context "reading_chunk" do 
    it "starts again from the beginning of text when it reaches the end" do 
      diary_entry = DiaryEntry.new(title, contents)
      expect(diary_entry.reading_chunk(2, 5)).to eq "#{('one ' * 9)}one"
    end  
  end 
end 

