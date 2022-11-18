require "diary"
require "diary_entry"

describe Diary do
  it "adds a diary entry" do
    diary = Diary.new
    diary_entry_1 = DiaryEntry.new("January 10th", "I rode my bike.")
    expect(diary.add(diary_entry_1)).to eq [diary_entry_1]
  end

  it "returns a list of all diary entries" do
    diary = Diary.new
    diary_entry_1 = DiaryEntry.new("January 10th", "I rode my bike.")
    diary_entry_2 = DiaryEntry.new("February 4th", "I played codewars")
    diary.add(diary_entry_1)
    diary.add(diary_entry_2)
    expect(diary.all).to eq [diary_entry_1, diary_entry_2]
  end

  it "counts the words of all diary entries" do
    diary = Diary.new
    diary_entry_1 = DiaryEntry.new("January 10th", "I rode my bike.")
    diary_entry_2 = DiaryEntry.new("February 4th", "I played codewars")
    diary.add(diary_entry_1)
    diary.add(diary_entry_2)
    expect(diary.count_words).to eq 7
  end

  it 'returns how long it would take in minutes to read all diary entries' do 
    diary = Diary.new
    diary_entry_1 = DiaryEntry.new("January 10th", "I rode my bike.")
    diary_entry_2 = DiaryEntry.new("February 4th", "I played codewars")
    diary.add(diary_entry_1)
    diary.add(diary_entry_2)
    expect(diary.reading_time(10)).to eq 1
  end 

  it 'returns how long it would take in minutes to read all diary entries' do 
    diary = Diary.new
    diary_entry_1 = DiaryEntry.new("January", "hello " * 100)
    diary_entry_2 = DiaryEntry.new("February", "goodbye " * 100)
    diary.add(diary_entry_1)
    diary.add(diary_entry_2)
    expect(diary.reading_time(10)).to eq 20
  end 

  it 'returns the diary entry with a reading time closest to minutes user has to read' do
    diary = Diary.new
    diary_entry_1 = DiaryEntry.new("January", "hello " * 50)
    diary_entry_2 = DiaryEntry.new("February", "goodbye " * 100)
    diary.add(diary_entry_1)
    diary.add(diary_entry_2)
    expect(diary.find_best_entry_for_reading_time(10, 6)).to eq diary_entry_1
  end 
end 

