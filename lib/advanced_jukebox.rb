my_songs = {
"Go Go GO" => '/Users/Rj/Documents/flatIrons/learn/labs/jukebox-cli-denver-web-060319/audio/Emerald-Park/01.mp3',
"LiberTeens" => '/Users/Rj/Documents/flatIrons/learn/labs/jukebox-cli-denver-web-060319/audio/Emerald-Park/02.mp3',
"Hamburg" =>  '/Users/Rj/Documents/flatIrons/learn/labs/jukebox-cli-denver-web-060319/audio/Emerald-Park/03.mp3',
"Guiding Light" => '/Users/Rj/Documents/flatIrons/learn/labs/jukebox-cli-denver-web-060319/audio/Emerald-Park/04.mp3',
"Wolf" => '/Users/Rj/Documents/flatIrons/learn/labs/jukebox-cli-denver-web-060319/audio/Emerald-Park/05.mp3',
"Blue" => '/Users/Rj/Documents/flatIrons/learn/labs/jukebox-cli-denver-web-060319/audio/Emerald-Park/06.mp3',
"Graduation Failed" => '/Users/Rj/Documents/flatIrons/learn/labs/jukebox-cli-denver-web-060319/audio/Emerald-Park/07.mp3'
}

def help
  puts "I accept the following commands:
  - help : displays this help message
  - list : displays a list of songs you can play
  - play : lets you choose a song to play
  - exit : exits this program"
end



def list(my_songs)
  my_songs.each {|k,v| puts "#{k}"}
end


def play(my_songs)
  puts "Please enter a song name:"
  user_input = gets.chomp
  song_path = nil
  my_songs.each do |song, path|
    if song.downcase.include?(user_input.downcase)
      song_path = path
      break
    end
  end
  song_path == nil ? (puts "Invalid input, please try again") : (system "open #{song_path}")
end

def exit_jukebox
  puts "Goodbye"
end

def run(my_songs)
  puts "Welcome to the Emerald "
  help
  puts "Please enter a command:"
  input = gets.chomp
  until input == "exit" do
    if input == "list"
      list(my_songs)
      input = gets.chomp
    elsif input == "play"
      play(my_songs)
      input = gets.chomp
    elsif input == "help"
      help
      input = gets.chomp
    else
      help
      input = gets.chomp
    end
  end
  exit_jukebox
end
