require 'grammar_stats'

RSpec.describe GrammarStats do
  context '#checks' do
    text = GrammarStats.new

    context 'when given an empty string' do 
      it 'fails' do
        expect{ text.check("") }. to raise_error 'This is not a valid input.'
      end 
    end 

    it 'returns true if inputted text has a capital letter and sentence ending punctuation' do
      expect(text.check("Hi, I'm Cecily?")).to eq true
    end

    it 'returns false if inputted text does not have the correct sentence ending punctuation' do 
      expect(text.check("Hi, I'm Cecily,")).to eq false
    end 
  
    it 'returns false if inputted text does not have start with a capital letter' do 
      expect(text.check("hi, I'm Cecily!")).to eq false
    end 
  end

  context '#percentage_good' do
    context 'inputted text is correct' do
      it 'returns 100' do
        text = GrammarStats.new
        text.check("Hi, I'm Cecily?")
        expect(text.percentage_good).to eq(100)
      end
    end

    context 'inputted text is correct and incorrect' do
      it 'returns 50 if inputted text is correct and incorrect' do
        text = GrammarStats.new
        text.check("Hi, I'm Cecily?")
        text.check("Hi, I'm Cecily,")
        expect(text.percentage_good).to eq(50)
      end
    end

      it 'returns 75 if inputted text is correct and incorrect' do 
        text = GrammarStats.new 
        text.check("Hi, I'm Cecily?")
        text.check("Hi, I'm Cecily!")
        text.check("Hi, I'm Cecily.")
        text.check("Hi, I'm Cecily,")
        expect(text.percentage_good).to eq(75)
      end 

    context 'inputted text is incorrect' do 
      it 'retruns 0 if all inputted text is incorrect' do 
        text = GrammarStats.new
        text.check("Hi, I'm Cecily,")
        text.check("hi, I'm Cecily.")
        text.check("Hi, I'm Cecily")
      end
    end
  end 
end 

