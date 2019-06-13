
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
  puts songs.each_with_index {|e,i|}
end 


def play(songs)
  puts "Please enter a song name or number: "
  user_response = gets.chomp
  songs.each_with_index do |e,i|
     if user_response.to_i == i || user_response == e
       puts "Playing #{songs[i-1]}"
      
      else 
    puts "Invalid input, please try again"
  end 
   end 
end 


def exit_jukebox 
  puts "Goodbye"
end 

def run(songs)
  
  puts "Please enter a command:"
  case user_response = gets.chomp
  when user_response == "help" || "list" || "play"
    help
  else
     user_response == "exit"
    exit_jukebox
    
  end 

end 