require 'music_tracker'

RSpec.describe MusicTracker do 
  track = MusicTracker.new 

  context '#add' do

    it 'returns error message if given an empty string' do 
      track.add('')
      expect { track.list}.to raise_error 'You currently have no tracks stored.'
    end 
  
    it 'adds and returns list of tracks when one track is added' do 
      track.add("Blue Moon, Ella Fitzgerald")
      expect { track.list }.to output("Blue Moon, Ella Fitzgerald\n").to_stdout
    end 

    it 'adds another track to the list of tracks and returns the updated list' do
      track.add("Skater boy, Avril Lavign")
      expect { track.list }.to output("Blue Moon, Ella Fitzgerald\nSkater boy, Avril Lavign\n").to_stdout
    end 
    
    it 'return the same list when given an empty string' do 
      track.add('')
      expect { track.list }.to output("Blue Moon, Ella Fitzgerald\nSkater boy, Avril Lavign\n").to_stdout
    end 
  end 
end 