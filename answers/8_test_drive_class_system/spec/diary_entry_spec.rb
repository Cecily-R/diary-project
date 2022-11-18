require 'diary_entry2'

describe DiaryEntry do 
  it 'initialised correctly' do 
  diary_entry = DiaryEntry.new('Day one', 'Today I learned how to debug')
  expect(diary_entry.title).to eq 'Day one'
  expect(diary_entry.contents).to eq 'Today I learned how to debug' 
  end 

  it 'counts the words of contents correctly' do 
    diary_entry = DiaryEntry.new('Day one', 'Today I learned how to debug')
    expect(diary_entry.count_words).to eq 6
  end 

  it 'returns a reading time based on the users words per minute' do 
    diary_entry = DiaryEntry.new('Day one', 'Today I learned how to debug')
    expect(diary_entry.reading_time(1)).to eq 6
  end 

  it 'returns a reading time based on the users words per minute' do 
    diary_entry = DiaryEntry.new('Day one', 'Today I learned how to debug')
    expect(diary_entry.reading_time(4)).to eq 2 
  end 

  it 'returns a reading chunk based on the users wpm and minutes' do 
    diary_entry = DiaryEntry.new('Day one', 'Today I learned how to debug')
    expect(diary_entry.reading_chunk(1,1)).to eq 'Today'
  end 

  it 'cycles through the test when called repeatedly' do 
    diary_entry = DiaryEntry.new('Day one', 'Today I learned how to debug')
    expect(diary_entry.reading_chunk(2,1)).to eq 'Today I'
    expect(diary_entry.reading_chunk(2,1)).to eq 'learned how'
  end

  it 'returns to the beginning of contents when it reaches the end' do 
    diary_entry = DiaryEntry.new('Day one', 'Today I learned how to debug')
    expect(diary_entry.reading_chunk(6,1)).to eq 'Today I learned how to debug'
    expect(diary_entry.reading_chunk(6,1)).to eq 'Today I learned how to debug'
  end

  it 'returns to the beginning of contents when it reaches the end' do 
    diary_entry = DiaryEntry.new('Day one', 'Today I learned how to debug')
    expect(diary_entry.reading_chunk(5,1)).to eq 'Today I learned how to'
    expect(diary_entry.reading_chunk(5,1)).to eq 'debug'
    expect(diary_entry.reading_chunk(5,1)).to eq 'Today I learned how to'
  end

  
  
end 