songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapin - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
]

def help
  puts "I accept the following commands:"
  puts "help : displays this help message"
  puts "list : displays a list of songs you can play"
  puts "play : lets you choose a song to play"
  puts "exit : exits this program"  
end

def list songs
  songs.each_with_index do  |element, index|
    puts "#{index + 1}. #{element}"
  end
end

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