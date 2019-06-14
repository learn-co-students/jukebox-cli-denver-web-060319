# def say_hello(name)
#   "Hi #{name}!"
# end

# puts "Enter your name:"
# users_name = gets.chomp

# puts say_hello(users_name)

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

# def split_array
#   songs_array.map do |song|
#     song.split(" - ")
#   end
# end

# def songs_hash
#   songs_hash = {}
#   split_array.each_with_index do |song, index|
#     songs_hash[(index + 1)] = song
#   end
#   songs_hash
# end

def help
  puts "I accept the following commands:
  - help : displays this help message
  - list : displays a list of songs you can play
  - play : lets you choose a song to play
  - exit_jukebox : exits this program"
end

def play(songs)
  puts "Please enter a song name or number:"
  user_input = gets.chomp
  songs.each.with_index(1) do |song, index|
    if song.include?(user_input)
      puts "Playing #{song}"
    elsif user_input == index
      puts "Playing #{song}"
    else puts "Invalid input, please try again"
    end
  end
end

def list songs
  songs.each.with_index(1) do |song, index|
    puts "#{index}. #{song}"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  help
  puts "Please enter a command:"
  user_input = gets.strip
    case user_input
      when "list"
        list
      when "play"
        play
      when "help"
        help
      else "exit"
        exit_jukebox && exit
    end
end