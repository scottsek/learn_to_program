file_name = 'birthdaylist.txt'
birthday_hash = Hash.new
birthday_file = File.open file_name
birthday_file.each_line do |l|
  split_line = l.split(',')
  birthday_hash[split_line[0]] = "#{split_line[1]}, #{split_line[2]}" 
end
puts "Whose birthday do you want to know?"
response = gets.chomp
puts birthday_hash[response]
