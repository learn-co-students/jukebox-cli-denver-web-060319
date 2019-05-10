require 'pry'

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
	puts "- help : displays this help message"
	puts "- list : displays a list of songs you can play"
	puts "- play : lets you choose a song to play"
	puts "- exit : exits this program"
end

def list(songs)
	songs.each_with_index do |val, idx|
		puts "#{idx + 1}. #{val}"
	end
end

def play(songs)
	puts "Please enter a song name or number:"
	response = gets.chomp
	valid = false
	song_name = ""

	if response.include?("-")
		songs.each do |song|
			if (song == response)
				valid = true
				song_name = response
			end
		end
	else
		idx = response.to_i
		if( 1 <= idx && idx <= songs.size)
			valid = true
			song_name = songs[idx - 1]
		end
	end

	if (valid)
		puts "Playing #{song_name}"	
	else
		puts "Invalid input, please try again"
	end

end

def exit_jukebox
	puts "Goodbye"
end

def run(songs)
	help
	puts "Please enter a command:"
	response = gets.chomp
	loop do
		puts "Please enter a command:"
		response = gets.chomp
		if (response == 'list')
			list(songs)
		elsif (response == 'help')
			help
		elsif (response == 'play')
			play(songs)
		elsif (response == 'exit')
			exit_jukebox
			break	
		end
	end
end









