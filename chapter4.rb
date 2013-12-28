puts 'Hello there, and what\'s your first name?'
first_name = gets.chomp
puts 'What\'s your middle name?'
middle_name = gets.chomp
puts 'What\'s your last name?'
last_name = gets.chomp
full_name = first_name + ' ' + middle_name + ' ' + last_name

puts 'Your name is ' + full_name + '?'
puts 'Pleased to meet you, ' + full_name + '.'

puts 'What\'s your favorite number?'
fav_number = gets.chomp
new_number = fav_number.to_i + 1
puts 'I think you might like ' + new_number.to_s + ' as it is bigger and better!'
