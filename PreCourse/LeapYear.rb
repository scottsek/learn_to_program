puts 'Starting year:'
starting_year = gets.chomp.to_i
puts 'Ending year:'
ending_year = gets.chomp.to_i
puts
current_year = starting_year
while current_year < ending_year
  candidate = false

  divisible_by_4 = (current_year.to_f/4.0 == (current_year/4).to_f)
  divisible_by_100 = (current_year.to_f/100.0 == (current_year/100).to_f)
  divisible_by_400 = (current_year.to_f/400.0 == (current_year/400).to_f)

  if divisible_by_4 then
    candidate = true
    if divisible_by_100 then
      if divisible_by_400 then
        candidate = true
      else
        candidate = false
      end
    end
  end
  if candidate then
    puts current_year.to_s + ' is a leap year'
  end
  current_year = current_year + 1
end 