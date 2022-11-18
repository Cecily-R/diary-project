require 'make_snippet'

RSpec.describe "make_snippet method" do
  it "checks the length of a string" do
    expect(make_snippet("")).to eq 0 
  end 

  it "outputs ... if string is longer than five words" do 
    expect(make_snippet("Eliza and Cecily are pairing today")).to eq "Eliza and Cecily are pairing..."
  end 
end 

RSpec.describe "count_words method" do 
  it "out puts 0 when given empty string" do
    expect(count_words("")).to eq 0 
  end

  it "outputs number of words in a string" do 
    expect(count_words("Eliza and Cecily are pairing today")).to eq 6
  end 

end 