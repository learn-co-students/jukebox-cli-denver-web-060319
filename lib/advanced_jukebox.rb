#Here is the song hash you will be working with. Each key is a song name and each value is the location of it's mp3 file.
#make sure to edit the value of each key to replace < path to this directory >
#with the correct path to this directory on your computer

# # my_songs = {
# "Go Go GO" => '/Users/flatironschool/github/jukebox-cli-denver-web-060319/audio/Emerald-Park/01.mp3',
# "LiberTeens" => '/Users/flatironschool/github/jukebox-cli-denver-web-060319/audio/Emerald-Park/02.mp3',
# "Hamburg" =>  '/Users/flatironschool/github/jukebox-cli-denver-web-060319/audio/Emerald-Park/03.mp3',
# "Guiding Light" => '/Users/flatironschool/github/jukebox-cli-denver-web-060319/audio/Emerald-Park/04.mp3',
# "Wolf" => '/Users/flatironschool/github/jukebox-cli-denver-web-060319/audio/Emerald-Park/05.mp3',
# "Blue" => '/Users/flatironschool/github/jukebox-cli-denver-web-060319/audio/Emerald-Park/06.mp3',
# "Graduation Failed" => '/Users/flatironschool/github/jukebox-cli-denver-web-060319/audio/Emerald-Park/07.mp3'
# }

def help
  puts "I accept the following commands:
  - help : displays this help message
  - list : displays a list of songs you can play
  - play : lets you choose a song to play
  - exit_jukebox : exits this program"
end

def list(my_songs)
  my_songs.each { |song, path| puts song}
end

def play(my_songs)
  puts "Please enter your song choice:"
  user_input = gets.strip
  file = nil
  my_songs.find do |song, path|
    if user_input.include?(song)
      file = path
    end
  end
  if file != nil
    puts "Play #{user_input}"
    `open #{file}`
  elsif file == nil
    puts "Invalid choice, please try again"
  end
end
  #this method is slightly different!
  #you should still ask the user for input and collect their song choice
  #this time, only allow user's to input a song name
  #check to see if the name they give is in fact a key of the my_songs hash
  #if it isn't, tell them their choice is invalid
  #if it is, play the song using the system 'open <file path>' syntax
  #get the file path of the song by looking it up in the my_songs hash
  

def exit_jukebox
  puts "Goodbye"
end
#this method is the same as in jukebox.rb

def run(my_songs)
  help
  while true
    puts "Please enter a command:"
    user_input = gets.strip
    
    case user_input
    when "list"
      list(my_songs)
    when "play"
      play(my_songs)
    when "help"
      help
    when "exit"
      exit_jukebox
      exit
    end
  end
end
#this method is the same as in jukebox.rb