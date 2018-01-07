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
puts "I accept the following commands:"
puts "- help : displays this help message"
puts "- list : displays a list of songs you can play"
puts "- play : lets you choose a song to play"
puts "- exit : exits this program"
end


def play(song)
  puts "Please enter a song name or number"
  song_to_select = gets.chomp
  actual_song = song.index + 1
  if song_selected == actual_song
    puts "Playing ${actual_song}"
      binding.pry
  else
    "Invalid input, please try again"
  end
end

def list(songs)
  songs.map.with_index { |x, i| "#{i + 1}. " + x }
end


def exit_jukebox
  puts "Goodbye"

end

def run(songs)
  help

  input = ""
  while input
    puts "Please enter a command:"
    input = gets.downcase.strip
    case input
    when 'list'
      list(songs)
    when 'play'
      list(songs)
      play(songs)
    when 'help'
      help
    when 'exit'
      exit_jukebox
      break
    else
      help
    end
  end
end

play(songs)
