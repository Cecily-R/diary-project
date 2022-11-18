require 'time_calculator'

RSpec.describe 'time_calculator method' do
  it "returns 0 for empty string" do
    expect(time_calculator("")).to eq 0
  end

  it "returns 1 for string with 200 words" do 
    expect(time_calculator("Hello " * 200)).to eq 1
  end 

  it "returns 2 for string with 400 words" do 
    expect(time_calculator("Hello " * 400)).to eq 2
  end 

  it "returns 3 for string with 600 words" do 
    expect(time_calculator("Hello " * 600)).to eq 3
  end 

  it "returns 5 for string with 1000 words" do 
    expect(time_calculator("Hello " * 1000)).to eq 5
  end 

end