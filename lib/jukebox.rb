require 'pry'

def songs
  [
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
end

def help
  puts "I accept the following commands:\n- help : displays this help message\n- list : displays a list of songs you can play\n- play : lets you choose a song to play\n- exit : exits this program"
end

def list(songs)
  songs.each_with_index do |song, i|
    puts "#{i+1} #{song}"
  end
end

def play(songs)
  puts "Please enter a song name or number:"
  song_input = gets.chomp
  songs.each.with_index(1) do |song, i|
    if song == song_input
      return puts "Playing #{song}"
    elsif i == song_input.to_i
      return puts "Playing #{song}"
    else puts "Invalid input, please try again"
    end
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(user_input)
  help
    while user_input != "exit"
      puts "Please enter a command:"
      user_input = gets.chomp
      if user_input == "list"
        list(songs)
      elsif user_input == "play"
        play(songs)
      elsif user_input == "help"
        help
      elsif user_input == "exit"
        exit_jukebox
        break
      else puts "invalid input"
      end
    end
end