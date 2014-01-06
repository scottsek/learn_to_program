hash_roman = {1 => 'I', 5 => 'V', 10 => 'X', 50 => 'L', 100 => 'C', 500 =>'D', 1000 => 'M'}
numbers_to_subtract = [1000,500,100,50,10,5,1]

puts 'Enter number between 1 and 3000:'
number = gets.chomp.to_i
roman_numeral = ''
numbers_to_subtract.each do |subtract_me|
  while number - subtract_me >= 0
    roman_numeral = roman_numeral + hash_roman[subtract_me]
    number = number - subtract_me
  end
end
puts roman_numeral