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

#def say_hello(name)
  #{}"Hi #{name}!"
#end

#puts "Enter your name:"
#users_name = gets.chomp

#puts say_hello(users_name)

require 'pry'

def help
puts "I accept the following commands:"
puts "- help : displays this help message"
puts "- list : displays a list of songs you can play"
puts "- play : lets you choose a song to play"
puts "- exit : exits this program"
end

def list(songs)
  songs.each_with_index do |x, i|
    puts "#{i+1}. #{x}"
  end
end

def play(songs)

  puts "Please enter a song name or number:"
  user_response = gets.chomp

    if songs.include?(user_response) == true
      puts "Playing #{user_response}"
    elsif (1..songs.length).include?(user_response.to_i) == true
      puts "Playing #{songs[user_response.to_i - 1]}"
    else
      puts "Invalid input, please try again."
    end
end

def exit_jukebox
  puts "Goodbye."
end


def run(songs)

help
loop do
  puts "Please enter a command:"
  user_response_1 = gets.chomp

          if user_response_1 == "exit"
            exit_jukebox
            break
          elsif user_response_1 == "list"
            list(songs)
          elsif user_response_1 == "play"
            play(songs)
          elsif user_response_1 == "help"
            help
          end
      end
end

# && (1..songs.length).include?(user_response) == true
