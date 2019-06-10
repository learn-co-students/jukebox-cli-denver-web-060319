
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

def help
  puts "I accept the following commands:
  - help : displays this help message
  - list : displays a list of songs you can play
  - play : lets you choose a song to play
  - exit : exits this program"
end

def list(songs)
  songs.each_with_index do |song, index|
    puts "#{index + 1}. #{song}"
  end
end

def play(songs)
  puts "Please enter a song name or number:"
  user_response = gets.chomp.downcase
  songs_downcased = songs.map {|song| song.downcase}
  #just_songs = {}
  # songs.each_with_index do |song, index|
  #   just_songs[song[(song.index("-") + 2)..-1].downcase] = index
  # end
  # if just_songs.keys.include?(user_response.downcase)
  #   puts "Playing #{songs[just_songs[user_response]]}"
  # end
  if user_response.to_i != 0 && user_response.to_i <= 9
    puts "Playing #{songs[user_response.to_i - 1]}"
  elsif songs_downcased.include?(user_response)
    puts "Playing #{songs[songs_downcased.index(user_response)]}"
  else
    puts "Invalid input, please try again"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def prompt_user
  puts "Please enter a command:"
end

def run(songs)
  help
  prompt_user
  user_response = gets.chomp.downcase
  while user_response != "exit" do
    case user_response
    when "list"
      list(songs)
      prompt_user
      user_response = gets.chomp.downcase
    when "play"
      play(songs)
      prompt_user
      user_response = gets.chomp.downcase
    when "help"
      help
      prompt_user
      user_response = gets.chomp.downcase
    end
  end
  exit_jukebox
end
