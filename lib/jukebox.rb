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
  puts "I accept the following commands:
- help : displays this help message
- list : displays a list of songs you can play
- play : lets you choose a song to play
- exit : exits this program"
end

def list(songs)
  song_list = ""
  song_list = songs.each_with_index do |song, i|
    "#{i+1}. #{song}"
  end
  puts song_list
end
  
def play(songs)
  puts "Please enter a song name or number:"
  song_choice = gets.chomp
  songs_hash = {}
  songs.each_with_index do |song, i|
    songs_hash["#{i+1}"] = song
    if songs_hash.has_key?(song_choice)
      puts "Playing #{songs_hash[song_choice]}"
    elsif songs_hash.has_value?(song_choice)
      puts "Playing #{song_choice}"
    else
      puts "Invalid input, please try again"
    end
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs) 
  help
  loop do
    puts "Please enter a command:"
    user_command = gets.strip
    case user_command
      when "list"
        list(songs)
      when "play"
        play(songs)
      when "help"
        help
    end
  break if user_command == exit 
      exit_jukebox
    end    
end

