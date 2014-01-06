words = Array.new
puts 'Type in one word per line, to stop, press Enter/Return on a blank line:'
user_word = 'slug'
while user_word.length != 0
  user_word = gets.chomp
  words.push user_word
end
words.pop
puts words.shuffle

