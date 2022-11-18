class MusicTracker

  def initialize 
    @music_tracks = []
  end 

  def add(track)
    @music_tracks << track
  end 

  def list
    if @music_tracks.empty? || @music_tracks.all? { |track| track.empty? }
      fail 'You currently have no tracks stored.'
    else
      @music_tracks.reject!{|track| track.empty?}
      puts @music_tracks 
    end 
  end 
end 

#track = MusicTracker.new 
#track.add('Blue Moon, Ella Fitzgerald')
#track.add('Skater boy, Avril Lavign')
#track.add('')
#track.add('')
#track.list

