puts "What year were you born?"
user_year = gets.chomp
puts "What month were you born?"
user_month = gets.chomp
puts "What day were you born?"
user_day = gets.chomp
current_time = Time.new

born = Time.gm(user_year, user_month, user_day, 12, 00)
one_billion = born + 10**9
verb_form = if one_billion > current_time
              'will be'
            else
              'were'
            end 
puts "You #{verb_form} one billion seconds old on #{one_billion}."
years_from_seconds = (current_time - born)/(365*24*60*60)
birthday_years = years_from_seconds.to_i
birthday_years.times do |n|
  puts "SPANK! #{n+1}"
end
