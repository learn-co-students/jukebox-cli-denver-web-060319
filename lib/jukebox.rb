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
 songs.each_with_index do |v, i|
  puts "#{i}. #{v}"
 end
end

def exit_jukebox
  puts "Goodbye"
end

def play (songs)
  puts "Please enter a song name or number:"
  songrequest = gets.chomp
  songs.each.with_index (1) do |v, i|
      if songrequest.to_i == i
       puts "Playing song #{v}"
      elsif songrequest == v
       puts "Playing song #{v}"
      else
     puts "Invalid input, please try again"
      end
    end
  end

  def run (user_response)
    puts "Please enter a command:"
    user_response = gets.chomp
    if user_response == "list"
      list
    elsif user_response == "play"
      play
    elsif user_response == "help"
      help
    elsif user_response == "exit"
      exit_jukebox
    else puts "Please enter a valid command"
    end
  end


      
  

#def say_hello(name)
 # "Hi #{name}!"
#end

#puts "Enter your name:"
#userN = gets.chomp

#puts say_hello(userN)