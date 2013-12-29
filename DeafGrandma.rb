#Deaf Grandma
response_to_unshouted = 'HUH?! SPEAK UP, SONNY'
user_says=''
while user_says != "BYE"
	user_says = gets.chomp
	if user_says != user_says.upcase then
		puts response_to_unshouted
	else
		random_year = 1930 + rand(20)
		response_to_shouted = 'NO, NOT SINCE ' + random_year.to_s
		puts response_to_shouted unless user_says == 'BYE'
	end
end