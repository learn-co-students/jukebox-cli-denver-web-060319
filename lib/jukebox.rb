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

def help
  puts "I accept the following commands:
  - help : displays this help message
  - list : displays a list of songs you can play
  - play : lets you choose a song to play
  - exit : exits this program"
end

def list(songs)
  songs.each_with_index {|song, i| puts "#{i+1}. #{song}"}
end

def play(songs)
  puts "Please enter a song name or number:"
  user_input = gets.chomp
  display_song = nil
  songs.each.with_index(1) do |song, i|
    if user_input.to_i == i || song.downcase.include?(user_input.downcase)
      display_song = song
      break
    end
  end
  display_song == nil ? (puts "Invalid input, please try again") : (puts "Playing #{display_song}")
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  help
  puts "Please enter a command:"
  input = gets.chomp
  until input == "exit" do
    if input == "list"
      list(songs)
      input = gets.chomp
    elsif input == "play"
      play(songs)
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