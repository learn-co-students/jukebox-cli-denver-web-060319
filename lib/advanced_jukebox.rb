#Here is the song hash you will be working with. Each key is a song name and each value is the location of it's mp3 file.
#make sure to edit the value of each key to replace < path to this directory >
#with the correct path to this directory on your computer

# my_songs = {
# "Go Go GO" => '< path to this directory >/jukebox-cli/audio/Emerald-Park/01.mp3',
# "LiberTeens" => '< path to this directory >/jukebox-cli/audio/Emerald-Park/02.mp3',
# "Hamburg" =>  '< path to this directory >/jukebox-cli/audio/Emerald-Park/03.mp3',
# "Guiding Light" => '< path to this directory >/jukebox-cli/audio/Emerald-Park/04.mp3',
# "Wolf" => '< path to this directory >/jukebox-cli/audio/Emerald-Park/05.mp3',
# "Blue" => '< path to this directory >/jukebox-cli/audio/Emerald-Park/06.mp3',
# "Graduation Failed" => '< path to this directory >/jukebox-cli/audio/Emerald-Park/07.mp3'
# }

def help
  puts "I accept the following commands:"
  puts "help : displays this help message"
  puts "list : displays a list of songs you can play"
  puts "play : lets you choose a song to play"
  puts "exit : exits this program"  
end


def list songs
  songs.each_with_index do  |title, index|
    puts "#{index + 1}. #{title}"
  end
end

# def play(my_songs)
#   #this method is slightly different!
#   #you should still ask the user for input and collect their song choice
#   #this time, only allow user's to input a song name
#   #check to see if the name they give is in fact a key of the my_songs hash
#   #if it isn't, tell them their choice is invalid
#   #if it is, play the song using the system 'open <file path>' syntax
#   #get the file path of the song by looking it up in the my_songs hash
  
# end

def play(songs)
  puts "Please enter a song name or number:"
  
  song_input = gets.chomp

  if (1..9).any? { |n| n == song_input.to_i }
      song_name = songs[song_input.to_i-1]
      puts "Playing #{song_name}"
  elsif songs.any? { |title| title == song_input}
      puts "Playing #{song_input}"
  else
      puts "Invalid input, please try again"
  end
end


def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  help
  user_command = nil

  until user_command == "exit"
    puts "Please enter a command:"
    user_command = gets.chomp
    case user_command
      when "help"
        help
      when "list"
        list(songs)
      when "play"
        play(songs)
      when "exit"
        exit_jukebox
    end
  end
end
