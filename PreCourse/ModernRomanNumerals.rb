def modernRoman how_many_tens
	roman = ''
	look_at = ['M','C','X','I']
	convert_to_5 = ['D','L','V']
	look_at.each_with_index do |letter, index|
		number_of_tens = how_many_tens[letter]
		case number_of_tens
			when 9
				roman = roman + letter + look_at[index - 1]
			when 5..8
				suffix = ''
				(number_of_tens-5).times do suffix = suffix + letter end
				roman = roman + convert_to_5[index - 1] + suffix
			when 4
				roman = roman + letter + convert_to_5[index-1]
			else
				how_many_tens[letter].times do roman = roman + letter end
		end
	end
	roman
end

hash_roman = {1 => 'I', 5 => 'V', 10 => 'X', 50 => 'L', 100 => 'C', 500 =>'D', 1000 => 'M'}
how_many = {'I' => 0, 'V' => 0, 'X' => 0, 'L' => 0, 'C' => 0, 'D' => 0, 'M' => 0}
numbers_to_process = [1000,100,10,1]
puts 'Enter number between 1 and 3000:'
number = gets.chomp.to_i
process_me = number
numbers_to_process.each_with_index do |value, index|
	how_many[hash_roman[value]] = process_me/value
	process_me = process_me%value
end
puts modernRoman how_many