# Add your code here
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
  songs.each_with_index {|item, index|
    puts "#{index + 1}. #{item}"
  }
end

def play(songs)
  puts "Please enter a song name or number:"
  users_input = gets.strip
  song_number =[]
  song_name = []
  songs.each_with_index {|item, index|
    song_number.push(index+1)
    song_name.push(item)
  }

  binding.pry
  if users_input.is_a? Integer && song_number.include? users_input;
    puts "Playing #{song_name[users.input-1]}"
  else
    puts "Invalid input, please try again"

  if users_input.is_a? String && song_name.include? users_input;
    puts "Playing #{users_input}"
  else
    puts "Invalid input, please try again"
  end

end
