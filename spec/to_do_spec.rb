require 'to_do'

RSpec.describe 'to_do method' do 
  context "When given an empty string" do 
    it "fails" do
    expect{ includes_todo("") }.to raise_error "This is not a valid input."
    end 
  end 

  it "gives true value when given string including #TODO" do 
    expect(includes_todo("Wash car #TODO")).to eq true
  end 

  it "gives false value when string does not include #TODO" do 
    expect(includes_todo("Buy dog food")).to eq false
  end 

  it "gives false value when string includes TODO without #" do 
    expect(includes_todo("Food shop TODO")).to eq false
  end 

  it "gives true value when string contains #TODO followed by a full stop" do
    expect(includes_todo("Clean kitchen #TODO.")).to eq true
  end
end 