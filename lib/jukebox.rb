require "pry"
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
# def say_hello(name)
#   "Hi #{name}!"
# end
 
# puts "Enter your name:"
# users_name = gets.chomp
 
# puts say_hello(users_name)

def help
  puts "I accept the following commands:"
  puts "help : displays this help message"
  puts "list : displays a list of songs you can play"
  puts "play : lets you choose a song to play"
  puts "exit : exits this program"  
end

def play songs
  puts "Please enter a song name or number:"
  user_input = gets.chomp
  if songs.include?(user_input)
    songs.each do |song|
      if user_input == song
        puts "Playing #{song}"
      end
    end
  elsif songs.include?(songs[user_input.to_i - 1])
    puts  "Playing #{songs[user_input.to_i - 1]}"
  else puts "Invalid input, please try again"
  end

  unless songs.include?(user_input)
    puts "Invalid input, please try again"
  end

end 

def list songs
    songs.each_with_index do  |element, index|
      puts "#{index + 1}. #{element}"
    end
end 

def exit_jukebox
  puts "Goodbye"
end

def run songs
  help
  puts "Please enter a command:"
  play(songs)
  list(songs)
  exit_jukebox

end 