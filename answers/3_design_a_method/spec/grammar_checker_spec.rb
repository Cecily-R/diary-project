require 'grammar_checker'

RSpec.describe 'grammar_check method' do
  context 'when given empty string' do
    it 'fails' do
      expect{ grammar_check("") }.to raise_error "Not a sentence."
    end
  end

  context 'when given string without punctuation or capital' do 
    it 'returns false' do 
      expect(grammar_check("hello, world")).to eq false
    end 
  end  

  context 'when given capitalized string with full stop' do
    it 'returns true' do
      expect(grammar_check("Hello, world.")).to eq true
    end
  end
  
  context 'when given capitalized string with exclamation mark' do 
    it 'returns true' do 
      expect(grammar_check("Hello, world!")).to eq true
    end 
  end 

  context 'when given capitalized string without punctuation' do
    it 'returns false' do
      expect(grammar_check("Hello, world")).to eq false
    end
  end
  
  
end

