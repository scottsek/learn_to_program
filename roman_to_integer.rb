roman_to_integer = {'I' => 1, 'V' => 5, 'X' => 10, 'L' => 50, 'C' => 100, 'D' => 500, 'M' => 1000}
previous = 0
amount = 0 
puts 'Please input a roman number:'
user_response = gets.chomp
user_response.each_char do |c|
  current = roman_to_integer[c.upcase]
  if current.nil?
    puts "#{c} is not a valid Roman numeral"
    exit
  end
  if current < previous
    add_me = (-1 * current)
  else
    add_me = current
  end
  previous = current
  amount += add_me
end
puts amount
